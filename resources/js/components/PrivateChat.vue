<template>
<div class="chatbody">
     <div class="container-fluid h-100">
        <div class="row justify-content-center h-100">
            <div class="col-md-4 col-xl-3 chat">
                <div class="card mb-sm-3 mb-md-0 contacts_card">
                    <div class="card-header">
                        <div class="input-group">
                            <input type="text" placeholder="Search..."  class="form-control search" v-model="nombre">
							<div class="input-group-prepend">
								<span class="input-group-text search_btn"><i class="fas fa-search"></i></span>
							</div>
                        </div>
                    </div>
                    <div class="card-body contacts_body">
                        <ul class="contacts">
                            <li v-for="(friend,index) in searchusers" 
							    :class="(friend.id==activeFriend)?'active':''"
							     :key="index"
								 @click="activeFriend=friend.id"
								 >
                                <div class="d-flex bd-highlight">
                                    <div class="img_cont">
                                        <img :src="'storage/'+friend.avatar" class="rounded-circle user_img">
                                        <span :class="(onlineFriends.find(user=>user.id===friend.id))?'online_icon':'online_icon offline'"></span>
                                    </div>
                                    <div class="user_info">
                                        <span>{{friend.name}}</span>
										<p v-if="onlineFriends.find(user=>user.id===friend.id)">en linea</p>
                                        <p v-else>desconectado</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="cad-footer"></div>
                </div>
            </div>
            <div class="col-md-8 col-xl-6 chat">
                <div class="card">
                    <div class="card-header msg_head">
                        <div class="d-flex bd-highlight">
                            <div class="img_cont" v-if="activeUser.id">
                                <img :src="'storage/'+activeUser.avatar" class="rounded-circle user_img">
								<span class="online_icon"></span>
                            </div>
                            <div class="user_info">
								<span>{{activeUser.name}}</span>
								<p>1767 Messages</p>
							</div>
                            <div  class="video_cam">
                                <span><i class="fas fa-video"></i></span>
								<span><i class="fas fa-phone"></i></span>
                            </div>
                        </div>
                        <span id="action_menu_btn"><i class="fas fa-ellipsis-v"></i></span>
                        <div class="action_menu">
                            <ul>
								<li><i class="fas fa-user-circle"></i> View profile</li>
								<li><i class="fas fa-users"></i> Add to close friends</li>
								<li><i class="fas fa-plus"></i> Add to group</li>
								<li><i class="fas fa-ban"></i> Block</li>
							</ul>
                        </div>
                    </div>
					<div class="card-body" v-chat-scroll>
						<div class="msg_card_body" v-for="(message, index) in messages"   :key="index" >
							<div :class="(message.user.id != user.id)? 'd-flex justify-content-start mb-4' : 'd-flex justify-content-end mb-4'">
								<!-- Avatar -->
								<div class="img_cont_msg">
									<img :src="'storage/'+message.user.avatar" class="rounded-circle user_img_msg">
								</div>
								<!-- Mensaje -->
								<div v-if="message.message != null" :class="(message.user.id != user.id)? 'msg_cotainer' :'msg_cotainer_send'">
									{{ message.message }}
									<span class="msg_time">{{message.user.name}}</span>
								</div>
								<!-- imagen si existe -->
								<div class="image-container" >
									<img v-if="message.image"  :src="'/storage/'+message.image" alt="" width="120px" >
								</div>
							</div>
						</div>
					</div>
                    <div class="card-footer">
                        <div class="input-group">
                            <div class="input-group-append">
								 <picker v-if="emoStatus" set="emojione" @select="onInput" title="Pick your emoji…" />
								<span class="input-group-text attach_btn" @click="toggleEmo">
									<i class="fas fa-grin-hearts"></i>
								</span>
								<span class="input-group-text attach_btn">
									 <file-upload
											:post-action="'/private-messages/'+activeFriend"
											ref='upload'
											v-model="files"
											@input-file="$refs.upload.active = true"
											:headers="{'X-CSRF-TOKEN': token}"
									>
									<i class="fas fa-paperclip"></i>
									</file-upload>
								</span>							
							</div>
							<textarea
									@keyup.enter="sendMessage"
									 v-model="newMessage"
									 name="message" 
									 class="form-control type_msg" 
									 placeholder="Escriba su mensage...">
							</textarea>
							<div class="input-group-append">
								<span class="input-group-text send_btn" @click="sendMessage"><i class="fas fa-location-arrow"></i></span>
							</div>
                        </div>
						
                    </div>
					<span  v-if="typingFriend.name" >{{ typingFriend.name }} esta escribiendo...</span>
                </div>
            </div>
        </div>
    </div>
</div>
   
</template>

<script>
 import { Picker } from 'emoji-mart-vue'
    export default {
		props:['user'],
		components:{
		Picker
		},
        data() {
            return {
				nombre: '',
				messages: [],
				files:[],
				newMessage: null,
				activeFriend: null,
				typingFriend:{},
				onlineFriends:[],
                users:[],
                activeUser: false,
				typingTimer: false,
				typingClock:null,
				emoStatus:false,
				token:document.head.querySelector('meta[name="csrf-token"]').content
            }
        },
        created() {
			this.fetchUsers();
			Echo.join('plchat')
			         .here((users) => {
						console.log('online',users);
						this.onlineFriends=users;
					})
					.joining((user) => {
						this.onlineFriends.push(user);
						console.log('joining',user.name);
					})
					.leaving((user) => {
						this.onlineFriends.splice(this.onlineFriends.indexOf(user),1);
						console.log('leaving',user.name);
					});

			Echo.private('privatechat.'+this.user.id)
			        .listen('PrivateMessageSent',(e)=>{
					this.activeFriend=e.message.user_id;
                     this.messages.push(e.message)
					})
					.listenForWhisper('typing', (e) => {
						if(e.user.id==this.activeFriend){
							this.typingFriend=e.user;
							
							if(this.typingClock) clearTimeout();
							this.typingClock=setTimeout(()=>{
														this.typingFriend={};
													},9000);
						}	
					});
		},
		computed: {
			 friends(){
				return this.users.filter((user)=>{
				return user.id !== this.user.id;
				})
			},
			searchusers(){
				return this.friends.filter( (user) => user.name.includes(this.nombre) );
			}
		},
		watch:{
			 files:{
				deep:true,
				handler(){
					let success=this.files[0].success;
					if(success){
						this.fetchMessages();
					}
				}
			},
			activeFriend(val){
				this.fetchMessages();
				this.obteneramigo(val);
			},
			'$refs.upload'(val){
				console.log(val);
			}
        },
        methods: {
			  onTyping(){
					Echo.private('privatechat.'+this.activeFriend).whisper('typing',{
					user:this.user
					});
				},
            fetchMessages() {
				  if(!this.activeFriend){
					return alert('Porfavor seleccione un amigo');
					}
						axios.get('/private-messages/'+this.activeFriend).then(response => {
							this.messages = response.data;
						});
			},
			fetchUsers(){
				 axios.get('/users').then(response => {
					this.users = response.data;
					if(this.friends.length>0){
					this.activeFriend=this.friends[0].id;
					}
				});
			},
			obteneramigo(id){
				axios.get('/myfriend/'+id).then(response => {
					this.activeUser = response.data;
				});
			},
			 sendMessage() {
				 if(!this.newMessage){
					return alert('por favor escriba el mansaje');
				}
				 if(!this.activeFriend){
				return alert('Porfavor seleccione un amigo');
				}
				this.messages.push({
					user: this.user,
					message: this.newMessage
				});
					axios.post('/private-messages/'+this.activeFriend, {message: this.newMessage}).then(response => {
							this.newMessage=null;
				});
			},
			toggleEmo(){
				this.emoStatus= !this.emoStatus;
			},
			 onInput(e){
				if(!e){
				return false;
				}
				if(!this.newMessage){
				this.newMessage=e.native;
				}else{
				this.newMessage=this.newMessage + e.native;
				}
				this.emoStatus=false;
			},
			 onResponse(e){
				console.log('onrespnse file up',e);
			}
        },
    }
</script>

<style scoped>
	chatbody{
			height: 100%;
			margin: 0;
			background: #7F7FD5;
	       background: -webkit-linear-gradient(to right, #91EAE4, #86A8E7, #7F7FD5);
	        background: linear-gradient(to right, #91EAE4, #86A8E7, #7F7FD5);
		}
		.chat{
			margin-top: auto;
			margin-bottom: auto;
		}
		.card{
			height: 500px;
			border-radius: 15px !important;
			background-color: rgba(0,0,0,0.4) !important;
		}
		.contacts_body{
			padding:  0.75rem 0 !important;
			overflow-y: auto;
			white-space: nowrap;
		}
		.card-body{
			overflow-y: auto;
		}
		.card-header{
			border-radius: 15px 15px 0 0 !important;
			border-bottom: 0 !important;
		}
	 .card-footer{
		border-radius: 0 0 15px 15px !important;
			border-top: 0 !important;
	}
		.container{
			align-content: center;
		}
		.search{
			border-radius: 15px 0 0 15px !important;
			background-color: rgba(0,0,0,0.3) !important;
			border:0 !important;
			color:white !important;
		}
		.search:focus{
		     box-shadow:none !important;
           outline:0px !important;
		}
		.type_msg{
			background-color: rgba(0,0,0,0.3) !important;
			border:0 !important;
			color:white !important;
			height: 60px !important;
			overflow-y: auto;
		}
			.type_msg:focus{
		     box-shadow:none !important;
           outline:0px !important;
		}
		.attach_btn{
	border-radius: 15px 0 0 15px !important;
	background-color: rgba(0,0,0,0.3) !important;
			border:0 !important;
			color: white !important;
			cursor: pointer;
		}
		.send_btn{
	border-radius: 0 15px 15px 0 !important;
	background-color: rgba(0,0,0,0.3) !important;
			border:0 !important;
			color: white !important;
			cursor: pointer;
		}
		.search_btn{
			border-radius: 0 15px 15px 0 !important;
			background-color: rgba(0,0,0,0.3) !important;
			border:0 !important;
			color: white !important;
			cursor: pointer;
		}
		.contacts{
			list-style: none;
			padding: 0;
		}
		.contacts li{
			width: 100% !important;
			padding: 5px 10px;
			margin-bottom: 15px !important;
		}
	.active{
			background-color: rgba(0,0,0,0.3);
	}
		.user_img{
			height: 70px;
			width: 70px;
			border:1.5px solid #f5f6fa;
		
		}
		.user_img_msg{
			height: 40px;
			width: 40px;
			border:1.5px solid #f5f6fa;
		
		}
	.img_cont{
			position: relative;
			height: 70px;
			width: 70px;
	}
	.img_cont_msg{
			height: 40px;
			width: 40px;
	}
	.online_icon{
		position: absolute;
		height: 15px;
		width:15px;
		background-color: #4cd137;
		border-radius: 50%;
		bottom: 0.2em;
		right: 0.4em;
		border:1.5px solid white;
	}
	.offline{
		background-color: #c23616 !important;
	}
	.user_info{
		margin-top: auto;
		margin-bottom: auto;
		margin-left: 15px;
	}
	.user_info span{
		font-size: 20px;
		color: white;
	}
	.user_info p{
	font-size: 10px;
	color: rgba(255,255,255,0.6);
	}
	.video_cam{
		margin-left: 50px;
		margin-top: 5px;
	}
	.video_cam span{
		color: white;
		font-size: 20px;
		cursor: pointer;
		margin-right: 20px;
	}
	.msg_cotainer{
		margin-top: auto;
		margin-bottom: auto;
		margin-left: 10px;
		border-radius: 25px;
		background-color: #82ccdd;
		padding: 10px;
		position: relative;
	}
	.msg_cotainer_send{
		margin-top: auto;
		margin-bottom: auto;
		margin-right: 10px;
		border-radius: 25px;
		background-color: #78e08f;
		padding: 10px;
		position: relative;
	}
	.msg_time{
		position: absolute;
		left: 0;
		bottom: -15px;
		color: rgba(255,255,255,0.5);
		font-size: 10px;
	}
	.msg_time_send{
		position: absolute;
		right:0;
		bottom: -15px;
		color: rgba(255,255,255,0.5);
		font-size: 10px;
	}
	.msg_head{
		position: relative;
	}
	#action_menu_btn{
		position: absolute;
		right: 10px;
		top: 10px;
		color: white;
		cursor: pointer;
		font-size: 20px;
	}
	.action_menu{
		z-index: 1;
		position: absolute;
		padding: 15px 0;
		background-color: rgba(0,0,0,0.5);
		color: white;
		border-radius: 15px;
		top: 30px;
		right: 15px;
		display: none;
	}
	.action_menu ul{
		list-style: none;
		padding: 0;
	margin: 0;
	}
	.action_menu ul li{
		width: 100%;
		padding: 10px 15px;
		margin-bottom: 5px;
	}
	.action_menu ul li i{
		padding-right: 10px;
	
	}
	.action_menu ul li:hover{
		cursor: pointer;
		background-color: rgba(0,0,0,0.2);
	}
	@media(max-width: 576px){
	.contacts_card{
		margin-bottom: 15px !important;
	}
	}
</style>

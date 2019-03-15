import UserComponent from './UserComponent.js';

export default {
	template: `
    <div class="component-wrapper" id="users">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 mb-5">
                    <h1 class="user-message text-center white">{{ message }}</h1>
                </div>
                <user v-for="(user, index) in userList" :liveuser="user" :key="index"></user>
            </div>
        </div>
    </div>
	`,

	created: function() {
	  //debugger;
	  this.fetchAllUsers();
	},

	data() {
	  return {
		message: `Select your user type`,

		userList: []
	  }
	},

	methods: {
	  fetchAllUsers() {
		let url = `./admin/scripts/users.php?allusers=true`;

		fetch(url)
		  .then(res => res.json())
		  .then(data => {this.userList = data})
		.catch(function(error) {
		  console.error(error);
		});
	  }
	},

	components: {
		user: UserComponent
	}
}
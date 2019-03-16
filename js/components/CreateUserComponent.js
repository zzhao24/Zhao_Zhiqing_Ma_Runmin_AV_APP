export default {
    template: `
    <div class="component-wrapper" id="users">
        <div class="container">
            <h1>Create User</h1>
            <p> {{ message }}</p>
            <nav>
                <ul>
                    <li><a href="#" @click="deleteUser()">Delete User</a></li>
                    <li><a href="#" @click="navtoadmin()">Dashboard</a></li>
                    <li><a href="">Sign Out</a></li>
                    <!-- scripts/caller.php?caller_id=logout -->
                </ul>
            </nav>
            
            
            <div class="row">
            <div class="col-lg-8">
            <form>
            
            <div class="form-group">
                        <label for="firstname">First Name</label>
                            <input v-model="input.firstname" type="text" class="form-control" id="firstname" placeholder="First Name">
                      </div>
                      <div class="form-group">
                        <label for="username">Username</label>
                            <input v-model="input.username" type="text" class="form-control" id="username" placeholder="Username">
                      </div>
                      <div class="form-group">
                        <label for="email">Email</label>
                            <input v-model="input.email" type="email" class="form-control" id="email" placeholder="Email">
                      </div>
                      <div class="form-group">
                        <label for="password">Password</label>
                            <input v-model="input.password" type="password" class="form-control" id="password" placeholder="Password">
                      </div>
                      
             

                      <button v-on:click.prevent="submitNewUser()" type="submit" class="btn btn-primary">Submit</button>
                </form>
</div>
</div>
        </div>
    </div>
    `,

    data() {
        return {
            message: "This is the admin dashboard page",

            input: {
                firstname: "",
                username: "",
                email: "",
                password: ""
            },
        }
    },
    methods: {
        navtoadmin() {
            this.$router.push({name: "createuser", params: {currentuser: this.liveuser}});
        },
        deleteUser() {
            this.$router.push({name: "deleteuser", params: {currentuser: this.liveuser}});
        },

        submitNewUser(){
            if(this.input.firstname != "" && this.input.username != "" && this.input.email != "" && this.input.password != "") {
                // fetch the user from the DB
                // generate the form data
                let formData = new FormData();

                formData.append("firstname", this.input.firstname);
                formData.append("username", this.input.username);
                formData.append("email", this.input.email);
                formData.append("password", this.input.password);


                let url = `./admin/scripts/create_user.php`;

                fetch(url, {
                    method: 'POST',
                    body: formData
                })
                    .then(res => res.json())
                    .then(data => {
                        console.log(data);
                        this.input.firstname = "";
                        this.input.username  = "";
                        this.input.email  = "";
                        this.input.password  = "";
                    })
                    .catch(function (error) {
                        console.log(error);
                    });

            }
        }
    }
}
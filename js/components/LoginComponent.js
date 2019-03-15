export default {
    template: `
            <div class="component-wrapper" id="login-form">
                <div class="container">
                    <div class="form-warp mx-auto">
                        <h1>Sign in</h1>
                        <p class="mt-3 mb-4">Before watching your favorite TV Shows on Roku, please log in with a valid username and password.</p>
                        <form>
                            <div class="form-group">
                                <label class="sr-only" for="inlineFormInputName">Username</label>
                                <input v-model="input.username" type="text" class="form-control" id="inlineFormInputName" placeholder="username" required>
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="exampleInputPassword1">Password</label>
                                <input  v-model="input.password" type="password" class="form-control" id="inlineFormPassword" placeholder="password" required>
                            </div>
                            <button v-on:click.prevent="login()" type="submit" class="btn btn-primary">Submit</button
            
                        </form>
                    </div>
                </div>
            </div>
     `,
 
     data() {
         return {
             input: {
                 username: "",
                 password: ""
             },

         }
     },
 
     methods: {
         login() {
            //console.log(this.$parent.mockAccount.username);
 
            if(this.input.username != "" && this.input.password != "") {
            // fetch the user from the DB
            // generate the form data
            let formData = new FormData();

             formData.append("username", this.input.username);
             formData.append("password", this.input.password);

             let url = `./admin/scripts/admin_login.php`;
 
             fetch(url, {
                    method: 'POST',
                    body: formData
                })
                 .then(res => res.json())
                 .then(data => {
                    if (typeof data != "object") { // means that we're not getting a user object back
                        console.warn(data);
                        console.error("authentication failed, please try again");
                        this.$emit("autherror", data);
                    } else {
                        this.$emit("authenticated", true, data[0]);
                        this.$router.replace({ name: "users" });
                    }
                })
             .catch(function(error) { 
                 console.log(error);
             });
        } else {
                 console.log("A username and password must be present");
            }
        }
    }
 }
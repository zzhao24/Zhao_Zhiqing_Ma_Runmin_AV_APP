export default {
    template: `
    <div class="component-wrapper" id="users">
        <div class="container">
            <h1>Delete User</h1>
            <p> {{ message }}</p>
            <nav>
                <ul>
                    <li><a href="#" @click="createUser()">Create User</a></li>
                    <li><a href="#" @click="navtoadmin()">Dashboard</a></li>
                    <li><a href="">Sign Out</a></li>
                    <!-- scripts/caller.php?caller_id=logout -->
                </ul>
            </nav>
        </div>
    </div>
    `,

    data() {
        return {
            message: "This is the admin dashboard page"
        }
    },

    methods: {
        createUser() {
            this.$router.push({name: "createuser", params: {currentuser: this.liveuser}});
        },
        navtoadmin() {
            this.$router.push({name: "admin", params: {currentuser: this.liveuser}});
        },
    }
}
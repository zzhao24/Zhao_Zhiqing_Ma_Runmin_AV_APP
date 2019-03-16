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
        </div>
    </div>
    `,

    data() {
        return {
            message: "This is the admin dashboard page"
        }
    },
    methods: {
        navtoadmin() {
            this.$router.push({name: "createuser", params: {currentuser: this.liveuser}});
        },
        deleteUser() {
            this.$router.push({name: "deleteuser", params: {currentuser: this.liveuser}});
        },
    }
}
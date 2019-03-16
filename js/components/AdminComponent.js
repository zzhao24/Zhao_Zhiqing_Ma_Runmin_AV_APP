export default {
    props: ['currentuser'],
    template: `
    <div class="component-wrapper" id="users">
        <div class="container">
            <h1>Admin Dashboard ???</h1>
            <h3>Welcome! ???</h3>
            <p> {{ message }}</p>
            <nav>
                <ul>
                    <li><a href="#">Create User</a></li>
                    <li><a href="#">Edit User</a></li>
                    <li><a href="#">Delete User</a></li>
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
    }
}
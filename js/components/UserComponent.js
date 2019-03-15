export default {
    props: ['liveuser'],

    template: `
    <div class="col-12 col-md-4 col-lg-3 text-center user-wrap">
        <div class="inner-wrap" @click="navToUserHome()">
            <img img :src="'images/' + liveuser.avatar" class="user-avatar">
            <p class="text-uppercase">{{ liveuser.username }}</p>
        </div>
    </div>
    `,

    created: function() {
        if (this.liveuser.avatar == null) {
            this.liveuser.avatar = "temp_avatar.jpg";
        }
    },

    methods: {
        navToUserHome() {            
            this.$router.push({ name: "home", params: { currentuser: this.liveuser } });
            // set a localstorage session object so that we don't have to log back in on page refresh or after our initial login
            localStorage.setItem("cachedUser", JSON.stringify(this.liveuser)); 
        }
    }
}
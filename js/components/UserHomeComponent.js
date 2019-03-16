export default {
    props: ['currentuser'],

    template: `
    <div class="component-wrapper video-container" id="parent-wrap">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-10">
                    <nav class="col-12 side-nav">
                        <ul class="media-type list-unstyled d-flex justify-content-around">
                            <li v-for="media in mediaTypes" :data-type="media.description" @click="loadMedia(null, media.description)" class="text-center mx-2 c-pointer">
                            <span>
                                <i v-bind:class="[media.iconClass]"></i>
                            </span>
    
                                <span class="d-none d-md-block">{{ media.description }}</span>
                            </li>
                        </ul>
                    </nav>
                </div>
    
                <div class="col-xl-10">
                    <div class="first-video-wrapper" v-if="activeMediaType == 'video' && retrievedMedia.length > 0">
                        <video autoplay controls muted :src="'video/' + currentMediaDetails.movies_trailer"></video>
                        <h3 class="white">{{currentMediaDetails.movies_title}}</h3>
                        <p class="desc" v-html="currentMediaDetails.movies_storyline"></p>
                        <span class="media-time">{{currentMediaDetails.movies_runtime}}</span>
                        <span class="media-year">Released in {{currentMediaDetails.movies_year}}</span>
                       <div class="comment-area">
                        <h3 class="col-12">Comments: </h3>
                            <div v-for="review in currentMediaReviews" class="my-2">
                            <div class="inner">
                                <p v-html="review.comment"></p>
                                <p class="ratings">Rated: {{review.rating_number}} / 5</p>
                            </div>
                                
                            </div>
                        </div>
                    </div>
                    
                   
   
                    <div class="first-video-wrapper" v-if="activeMediaType == 'audio' && retrievedMedia.length > 0">
                        <img :src="'images/audio/' + currentMediaDetails.audio_cover" alt="album art" class="img-fluid"/>
                        <audio autoplay controls :src="'audio/' + currentMediaDetails.audio_src"/>
                        <h3 class="white">{{currentMediaDetails.audio_artist}} * {{currentMediaDetails.audio_title}}</h3>
                        <p class="desc" v-html="currentMediaDetails.audio_storyline"></p>
                        <span class="media-year">Released in {{currentMediaDetails.audio_year}}</span>
                         <div class="comment-area">
                            <h3 class="col-12">Comments: </h3>
                            <div v-for="review in currentMediaReviews" class="my-2">
                            <div class="inner">
                                <p v-html="review.comment"></p>
                                <p class="ratings">Rated: {{review.rating_number}} / 5</p>
                            </div>
                                
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="first-video-wrapper" v-if="activeMediaType == 'television' && retrievedMedia.length > 0">
                        <video autoplay controls muted :src="'shows/' + currentMediaDetails.tvshows_trailer"></video>
                        <h3 class="white">{{currentMediaDetails.tvshows_title}}</h3>
                        <p class="desc" v-html="currentMediaDetails.tvshows_storyline"></p>
                        <span class="media-time">{{currentMediaDetails.tvshows_seasons}}</span>
                        <span class="media-year">Network: {{currentMediaDetails.tvshows_network}}</span>
                         <div class="comment-area">
                            <h3 class="col-12">Comments: </h3>
                            <div v-for="review in currentMediaReviews" class="my-2">
                            <div class="inner">
                                <p v-html="review.comment"></p>
                                <p class="ratings">Rated: {{review.rating_number}} / 5</p>
                            </div>
                                
                            </div>
                        </div>
                    </div>
 
   
                <form id="comment-form">
                      <div class="form-group">
                            <label for="comment">Comment</label>
                            <input v-model="input.comment" type="text" class="form-control" id="comment" placeholder="Your Comment">
                      </div>
                      <div class="form-group">
                            <label for="rating">Rating</label>
                            <select v-model="input.rating" class="form-control" id="rating">
                                  <option value="" disabled selected>Rate this video</option>
                                  <option value="1">1</option>
                                  <option value="2">2</option>
                                  <option value="3">3</option>
                                  <option value="4">4</option>
                                  <option value="5">5</option>
                            </select>
                      </div>
                      
                      <input v-if="activeMediaType == 'video'" v-model="input.movie = currentMediaDetails.movies_id"  type="hidden">
                      <input v-if="activeMediaType == 'audio' && retrievedMedia.length > 0" v-model="input.movie = currentMediaDetails.audio_id"  type="hidden">
                      <input v-if="activeMediaType == 'television' && retrievedMedia.length > 0" v-model="input.movie = currentMediaDetails.tvshows_id"  type="hidden">

                      <button v-on:click.prevent="submitComment()" type="submit" class="btn btn-primary">Submit</button>
                </form>
   
                </div>
            </div>
    
    
            <div class="row">
                <div class="col-12 genres my-4">
    
                    <!-- Movie Genres -->
                    <div class="row justify-content-center" v-if="activeMediaType == 'video'">
                        <div class="col-auto my-2">
                            <a class="text" href="action" @click.prevent="loadMedia('Action', 'video')">Action</a>
                        </div>
                        <div class="col-auto my-2">
                            <a class="text" href="comedy" @click.prevent="loadMedia('Comedy', 'video')">Comedy</a>
                        </div>
                        <div class="col-auto my-2">
                            <a class="text" href="family" @click.prevent="loadMedia('Family', 'video')">Family</a>
                        </div>
                        <div class="col-auto my-2">
                            <a class="text" href="fantasy" @click.prevent="loadMedia('Fantasy', 'video')">Fantasy</a>
                        </div>
                        <div class="col-auto my-2">
                            <a class="text" href="all" @click.prevent="loadMedia(null, 'video')">All</a>
                        </div>
                    </div>
    
                    <!-- Audio Genres -->
                    <div class="row justify-content-center" v-if="activeMediaType == 'audio'  && retrievedMedia.length > 0">
                        <div class="col-auto my-2">
                            <a class="text" href="alternative" @click.prevent="loadMedia('Rock', 'audio')">Rock</a>
                        </div>
                        <div class="col-auto my-2">
                            <a class="text" href="blues" @click.prevent="loadMedia('Rap', 'audio')">Rap</a>
                        </div>
                        <div class="col-auto my-2">
                            <a class="text" href="rock" @click.prevent="loadMedia('Pop', 'audio')">Pop</a>
                        </div>
                        <div class="col-auto my-2">
                            <a class="text" href="soundtrack" @click.prevent="loadMedia('Electronic', 'audio')">Electronic</a>
                        </div>
                        <div class="col-auto my-2">
                            <a class="text" href="all" @click.prevent="loadMedia(null, 'audio')">All</a>
                        </div>
                    </div>
    
    
                    <!-- TV Genres -->
                    <div class="row justify-content-center" v-if="activeMediaType == 'television' && retrievedMedia.length > 0">
                        <div class="col-auto my-2">
                            <a class="text" href="action" @click.prevent="loadMedia('Action', 'television')">Action</a>
                        </div>
                        <div class="col-auto my-2">
                            <a class="text" href="adventure" @click.prevent="loadMedia('Adventure', 'television')">Adventure</a>
                        </div>
                        <div class="col-auto my-2">
                            <a class="text" href="drama" @click.prevent="loadMedia('Drama', 'television')">Drama</a>
                        </div>
                        <div class="col-auto my-2">
                            <a class="text" href="crime" @click.prevent="loadMedia('Crime', 'television')">Crime</a>
                        </div>
                        <div class="col-auto my-2">
                            <a class="text" href="all" @click.prevent="loadMedia(null, 'television')">All</a>
                        </div>
                    </div>
                </div>
    
    
                <div v-if="activeMediaType == 'video'" v-for="media in retrievedMedia" class="col-6 col-md-4 col-lg-3 my-2">
                    <img :src="'images/video/' + media.movies_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded float-left media-thumb c-pointer w-100">
                </div>
                <div v-if="activeMediaType == 'audio'" v-for="media in retrievedMedia" class="col-6 col-md-4 col-lg-3 my-2">
                    <img :src="'images/audio/' + media.audio_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded media-thumb audio-thumb c-pointer w-100">
                </div>
                <div v-if="activeMediaType == 'television'" v-for="media in retrievedMedia" class="col-6 col-md-4 col-lg-3 my-2">
                    <img :src="'images/shows/' + media.tvshows_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded media-thumb shows-thumb c-pointer w-100">
                </div>
    
            </div>
        </div>
    </div>

    `,

    data() {
        return {
            // set the default to video -> will get a random video via query on create
            activeMediaType: "video",

            // push first (or random) media object here (selected / filtered on create)
            currentMediaDetails: {
                source: "avengers.mp4",
            },

            // could add more media types here in future
            mediaTypes: [
                { iconClass: "fas fa-headphones", description: "audio" },
                { iconClass: "fas fa-film", description: "video" },
                { iconClass: "fas fa-tv", description: "television" }
            ],

            retrievedMedia: [],

            currentMediaReviews: [],

            // controls mute / unmute for video element
            vidActive: false,

            input: {
                comment: "",
                rating: "",
                movie: ""
            },
        }
    },

    created: function() {
        console.log('params:', this.$route.params);

        this.loadMedia(null, "video");
    },

    methods: {

        loadMedia(filter, mediaType) {
            // set the active media type
            if (this.activeMediaType !== mediaType && mediaType !== null) {
                this.activeMediaType = mediaType;
            }
            // build the url based on any filter we pass in (will need to expand on this for audio)



            let url = (filter == null) ? `./admin/index.php?media=${this.activeMediaType}` : `./admin/index.php?media=${mediaType}&&filter=${filter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {
                    // we're gettin them all, dump it all in the media container
                    this.retrievedMedia = data;
                    // grab the first one in the list and make it active
                    this.currentMediaDetails = data[0];

                    let mediaid = null;

                    if (mediaType === 'video'){
                        mediaid = this.currentMediaDetails.movies_id;
                    } else if (mediaType === 'audio'){
                        mediaid = this.currentMediaDetails.audio_id;
                    }else if (mediaType === 'television') {
                        mediaid = this.currentMediaDetails.tvshows_id;
                    }

                    return fetch(`./admin/comment.php?media=${mediaType}&&movies_id=${mediaid}`);
                })
                .then(res => res.json())
                .then(data => {
                    this.currentMediaReviews = data;
                })
            .catch(function(error) {
                console.error(error);
            });

        },

        switchActiveMedia(media) {
            console.log(media);

            this.currentMediaDetails = media;


            let mediaid = null;

            if (this.activeMediaType === 'video'){
                mediaid = this.currentMediaDetails.movies_id;
            } else if (this.activeMediaType === 'video'){
                mediaid = this.currentMediaDetails.audio_id;
            }else if (this.activeMediaType === 'television') {
                mediaid = this.currentMediaDetails.tvshows_id;
            }

            let url  = `./admin/comment.php?media=${this.activeMediaType }&&movies_id=${mediaid}`;
            fetch(url)
                .then(res => res.json())
                .then(data => {
                    this.currentMediaReviews = data;
                })
                .catch(function(error) {
                    console.error(error);
                });
        },

        submitComment(){
            if(this.input.comment != "" && this.input.rating != "") {
                // fetch the user from the DB
                // generate the form data
                let formData = new FormData();

                formData.append("comment", this.input.comment);
                formData.append("rating", this.input.rating);
                formData.append("movie", this.input.movie);
                formData.append("type", this.activeMediaType);


                let url = `./admin/scripts/comment_submit.php`;

                fetch(url, {
                    method: 'POST',
                    body: formData
                })
                    .then(res => res.json())
                    .then(data => {
                        console.log(data);
                        this.input.comment = "";
                        this.input.rating  = "";
                        return fetch(`./admin/comment.php?media=${this.activeMediaType}&&movies_id=${this.input.movie}`);
                    })
                    .then(res => res.json())
                    .then(data => {

                        this.currentMediaReviews = data;
                    })
                    .catch(function (error) {
                        console.log(error);
                    });

            }
        }

    }
}

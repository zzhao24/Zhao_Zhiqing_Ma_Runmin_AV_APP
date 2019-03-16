export default {
    props: ['currentuser'],

    template: `
<div class="component-wrapper video-container" id="kid-wrap">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-10 d-none">
                <nav class="col-12 side-nav">
                    <ul class="media-type list-unstyled">
                        <li v-for="media in mediaTypes" :data-type="media.description" @click="loadMedia(null, media.description)">
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
                </div>


                <div class="first-video-wrapper" v-if="activeMediaType == 'audio' && retrievedMedia.length > 0">
                    <img :src="'images/audio/' + currentMediaDetails.audio_cover" alt="album art" class="img-fluid"/>
                    <audio autoplay controls :src="'audio/' + currentMediaDetails.audio_src"/>
                    <h3 class="white">{{currentMediaDetails.audio_artist}} * {{currentMediaDetails.audio_title}}</h3>
                    <p class="desc" v-html="currentMediaDetails.audio_storyline"></p>
                    <span class="media-year">Released in {{currentMediaDetails.audio_year}}</span>
                </div>

            </div>
        </div>

        <div class="row mt-5">

                <div v-if="activeMediaType == 'video'" v-for="media in retrievedMedia" class="col-6 col-md-4 col-lg-3 my-2">
                    <img :src="'images/video/' + media.movies_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded float-left media-thumb">
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

            // controls mute / unmute for video element
            vidActive: false
        }
    },

    created: function() {
        console.log('params:', this.$route.params);

        this.loadMedia('kid', "video");
    },

    methods: {

        loadMedia(filter, mediaType) {
            // set the active media type
            if (this.activeMediaType !== mediaType && mediaType !== null) {
                this.activeMediaType = mediaType;
            }
            // build the url based on any filter we pass in (will need to expand on this for audio)

            let url = `./admin/index.php?media=video&&filter=Kid`;

            fetch(url)
                .then(res => res.json())
                .then(data => {
                    // we're gettin them all, dump it all in the media container
                    this.retrievedMedia = data;
                    // grab the first one in the list and make it active
                    this.currentMediaDetails = data[0];
                })
                .catch(function(error) {
                    console.error(error);
                });
        },

        switchActiveMedia(media) {
            console.log(media);

            this.currentMediaDetails = media;
        }
    }
}

"use strict";
(function () {
    // Global variables
    var
        isNoviBuilder = false,
        plugins = {
            lightGallery: $( "[data-lightgallery='group']" ),
            lightGalleryItem: $( "[data-lightgallery='item']" ),
            lightDynamicGalleryItem: $( "[data-lightgallery='dynamic']" )
        };

    // Initialize scripts that require a finished document
    $( function () {
        isNoviBuilder = window.xMode;

        /**
         * @desc Initialize the gallery with set of images
         * @param {object} itemsToInit - jQuery object
         * @param {string} [addClass] - additional gallery class
         */
        function initLightGallery ( itemsToInit, addClass ) {
            if ( !isNoviBuilder ) {
                $( itemsToInit ).lightGallery( {
                    thumbnail: $( itemsToInit ).attr( "data-lg-thumbnail" ) !== "false",
                    selector: "[data-lightgallery='item']",
                    autoplay: $( itemsToInit ).attr( "data-lg-autoplay" ) === "true",
                    pause: parseInt( $( itemsToInit ).attr( "data-lg-autoplay-delay" ) ) || 5000,
                    addClass: addClass,
                    mode: $( itemsToInit ).attr( "data-lg-animation" ) || "lg-slide",
                    loop: $( itemsToInit ).attr( "data-lg-loop" ) !== "false"
                } );
            }
        }

        /**
         * @desc Initialize the gallery with dynamic addition of images
         * @param {object} itemsToInit - jQuery object
         * @param {string} [addClass] - additional gallery class
         */
        function initDynamicLightGallery ( itemsToInit, addClass ) {
            if ( !isNoviBuilder ) {
                $( itemsToInit ).on( "click", function () {
                    $( itemsToInit ).lightGallery( {
                        thumbnail: $( itemsToInit ).attr( "data-lg-thumbnail" ) !== "false",
                        selector: "[data-lightgallery='item']",
                        autoplay: $( itemsToInit ).attr( "data-lg-autoplay" ) === "true",
                        pause: parseInt( $( itemsToInit ).attr( "data-lg-autoplay-delay" ) ) || 5000,
                        addClass: addClass,
                        mode: $( itemsToInit ).attr( "data-lg-animation" ) || "lg-slide",
                        loop: $( itemsToInit ).attr( "data-lg-loop" ) !== "false",
                        dynamic: true,
                        dynamicEl: JSON.parse( $( itemsToInit ).attr( "data-lg-dynamic-elements" ) ) || []
                    } );
                } );
            }
        }

        /**
         * @desc Initialize the gallery with one image
         * @param {object} itemToInit - jQuery object
         * @param {string} [addClass] - additional gallery class
         */
        function initLightGalleryItem ( itemToInit, addClass ) {
            if ( !isNoviBuilder ) {
                $( itemToInit ).lightGallery( {
                    selector: "this",
                    addClass: addClass,
                    counter: false,
                    youtubePlayerParams: {
                        modestbranding: 1,
                        showinfo: 0,
                        rel: 0,
                        controls: 0
                    },
                    vimeoPlayerParams: {
                        byline: 0,
                        portrait: 0
                    }
                } );
            }
        }

        // lightGallery
        if ( plugins.lightGallery.length ) {
            for ( var i = 0; i < plugins.lightGallery.length; i++ ) {
                initLightGallery( plugins.lightGallery[ i ] );
            }
        }

        // lightGallery item
        if ( plugins.lightGalleryItem.length ) {

            for ( var i = 0; i < plugins.lightGalleryItem.length; i++ ) {
                initLightGalleryItem( plugins.lightGalleryItem[ i ] );
            }
        }

        // Dynamic lightGallery
        if ( plugins.lightDynamicGalleryItem.length ) {
            for ( var i = 0; i < plugins.lightDynamicGalleryItem.length; i++ ) {
                initDynamicLightGallery( plugins.lightDynamicGalleryItem[ i ] );
            }
        }
    } );
}());

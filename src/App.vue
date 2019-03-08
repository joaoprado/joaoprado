<template>
    <div id="app">
        <h1>João Prado</h1>
        <h2>Full Stack Developer</h2>
        <ul>
            <li v-tooltip="'6 anos de experiência'"><span class="lnr lnr-cog"></span> PHP</li>
            <li v-tooltip="'6 anos de experiência'"><span class="lnr lnr-cog"></span> Laravel</li>
            <li v-tooltip="'6 anos de experiência'"><span class="lnr lnr-screen"></span> JavaScript</li>
            <li v-tooltip="'5 anos de experiência'"><span class="lnr lnr-screen"></span> VueJS</li>
            <li v-tooltip="'3 anos de experiência'"><span class="lnr lnr-drop"></span> SCSS</li>
        </ul>
        <a href="mailto:contato@joaoprado.com.br">contato@joaoprado.com.br</a>
    </div>
</template>

<script>
    export default {
        name: "app",
    }
</script>


<style lang="scss">
    * { margin: 0; padding: 0; }

    html, body {
        background: #FAF9F8;
        color: #A5A3A6;
        font-family: 'Montserrat', sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        height:  100%;
        width:  100%;
    }

    #app {
        align-items: center;
        bottom: 0;
        display:  flex;
        flex-direction: column;
        justify-content: center;
        left: 0;
        padding:  10% 0;
        position: fixed;
        right: 0;
        top: 0;
    }

    h1 {
        color: lighten(#1C1B1E, 20%);
        font-size: 50px;
        line-height:  40px;
    }

    h2 {
        margin-bottom: 2rem;
    }

    a {
        color: #A5A3A6;
        font-size: 18px;
        text-decoration: none;
    }

    ul {
        list-style: none;
        margin-bottom: 2rem;

        li {
            align-items: center;
            display: flex;
            margin:  1rem;

            span {
                margin-right:  .5rem;
            }
        }
    }

    @media(min-width: 768px) {
        h1 {
            font-size: 100px;
            line-height:  80px;
        }

        h2 {
            font-size: 40px;
        }

        a {
            font-size: 30px;
        }

        ul {
            display: flex;

            li {
                span {
                    margin-right:  .5rem;
                }
            }
        }
    }

    .lnr {
        color:  #AA7B72;
        font-size:  20px;
    }

    .tooltip {
        display: block !important;
        z-index: 10000;

        .tooltip-inner {
            background: #1C1B1E;
            color: #A5A3A6;
            border-radius: 3px;
            padding: 5px 10px 4px;
        }

        .tooltip-arrow {
            width: 0;
            height: 0;
            border-style: solid;
            position: absolute;
            margin: 5px;
            border-color: black;
            z-index: 1;
        }

        &[x-placement^="top"] {
            margin-bottom: 5px;

            .tooltip-arrow {
                border-width: 5px 5px 0 5px;
                border-left-color: transparent !important;
                border-right-color: transparent !important;
                border-bottom-color: transparent !important;
                bottom: -5px;
                left: calc(50% - 5px);
                margin-top: 0;
                margin-bottom: 0;
            }
        }

        &[x-placement^="bottom"] {
            margin-top: 5px;

            .tooltip-arrow {
                border-width: 0 5px 5px 5px;
                border-left-color: transparent !important;
                border-right-color: transparent !important;
                border-top-color: transparent !important;
                top: -5px;
                left: calc(50% - 5px);
                margin-top: 0;
                margin-bottom: 0;
            }
        }

        &[x-placement^="right"] {
            margin-left: 5px;

            .tooltip-arrow {
                border-width: 5px 5px 5px 0;
                border-left-color: transparent !important;
                border-top-color: transparent !important;
                border-bottom-color: transparent !important;
                left: -5px;
                top: calc(50% - 5px);
                margin-left: 0;
                margin-right: 0;
            }
        }

        &[x-placement^="left"] {
            margin-right: 5px;

            .tooltip-arrow {
                border-width: 5px 0 5px 5px;
                border-top-color: transparent !important;
                border-right-color: transparent !important;
                border-bottom-color: transparent !important;
                right: -5px;
                top: calc(50% - 5px);
                margin-left: 0;
                margin-right: 0;
            }
        }

        &[aria-hidden='true'] {
            visibility: hidden;
            opacity: 0;
            transition: opacity .15s, visibility .15s;
        }

        &[aria-hidden='false'] {
            visibility: visible;
            opacity: 1;
            transition: opacity .15s;
        }
    }
</style>

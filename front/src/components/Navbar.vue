<template>
    <div class="header clearfix">
        <nav>
            <ul class="nav nav-pills pull-right">
                <router-link tag="li" to="/login" v-if=" ! isAuth"><a>Login</a></router-link>
                <router-link tag="li" to="/register" v-if=" ! isAuth"><a>Register</a></router-link>

                <router-link tag="li" to="/feed" v-if=" isAuth"><a>Feed</a></router-link>
                <router-link tag="li" to="/products/create" v-if=" isAuth"><a>Products Create</a></router-link>
                <router-link tag="li" to="/logout" v-if=" isAuth"><a>Logout</a></router-link>
                <!--<li role="presentation" class="active"><a href="#">Home</a></li>-->
                <!--<li role="presentation"><a href="#">About</a></li>-->
                <!--<li role="presentation"><a href="#">Contact</a></li>-->
            </ul>
        </nav>
        <h3 class="text-muted">Project name</h3>
    </div>
</template>
<script>
    export default {
        data () {
            return {
                isAuth: null
            }
        },

        created () {
            this.isAuth = this.$auth.isAuthenticated()
            this.setAuthenticatedUser()
        },
        methods: {
            setAuthenticatedUser () {
                this.$http.get('api/user')
                    .then(response => {
                        this.$auth.setAuthenticatedUser(response.body)
                        console.log(this.$auth.getAuthenticatedUser())
                    })
            }
        }
    }
</script>
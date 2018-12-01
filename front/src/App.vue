<template>
    <div id="app" class="container">
        <navbar></navbar>
        <router-view></router-view>
    </div>
</template>

<script>
    import Navbar from './components/Navbar.vue'
    import Login from './components/authentication/Login.vue'
    import Register from './components/authentication/Register.vue'
export default {
        components: {
            'navbar': Navbar,
        }
}
</script>

<style>

</style>

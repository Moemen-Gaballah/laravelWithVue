<template>
    <div class="col-md-4">
        <div class="thumbnail">
            <img src="https://mir-s3-cdn-cf.behance.net/project_modules/disp/ce54bf11889067.562541ef7cde4.png"/>
            <div class="caption">
                {{ product.user_id }}
                <h3>{{ product.name }}</h3>
                <p>{{ product.name }}</p>
                <hr>

                <p>
                    <a href="#" class="btn btn-default">
                        Wish List
                    </a>

                    <a href="#" class="btn btn-success">
                        Buy
                    </a>
                </p>

                <hr>

                <p v-if="product.user_id == authenticatedUser.id">
                    <a href="#" class="btn btn-danger" role="button" @click="$emit('delelte-product')">Delete</a>
                    <router-link class="btn btn-success" :to="'/products/' + product.id + '/edit'">Edit</router-link>
                </p>
            </div>
        </div>
    </div>
</template>

<script>


    export default {
        props: ['product', 'authenticatedUser'],
    }
</script>
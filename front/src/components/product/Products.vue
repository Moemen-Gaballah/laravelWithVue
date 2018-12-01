<template>
    <div class="row">
        <my-product v-for="product in products" @delelte-product="deleteProduct(product)" :authenticatedUser="authenticatedUser" :product="product">
        </my-product>
    </div>
</template>

<script>
    import Product from './Product.vue'
    import swal from 'sweetalert'
    export default {
        data () {
            return {
                products: [],
                test: 'I am a string'
            }
        },

        computed: {
            authenticatedUser () {
                return this.$auth.getAuthenticatedUser()
            }
        },

        components: {
            'my-product': Product
        },

        created () {
            this.$http.get('api/products')
                .then(response => {
                    this.products = response.body
                })
        },
        methods: {
            deleteProduct (product) {
                // console.log(product)
                swal({
                    title: "Are you sure?",
                    text: "You will not be able to recover this product!",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "Yes, delete it!",
                    closeOnConfirm: false
                },

                function () {
                this.$http.delete('api/products/' + product.id)
                    .then(response => {
                        // console.log(response)
                        let index = this.products.indexOf(product)
                        this.products.splice(index, 1)

                        swal("Deleted!", "Your product has been deleted.", "success");
                    })
                }.bind(this)
                );
            }
        }
    }
</script>
<template>
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="form-group">
                        <label>Name:</label>
                        <input type="text" v-model="product.name" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Price:</label>
                        <input type="number" v-model="product.price" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Description:</label>
                        <textarea class="form-control" v-model="product.description"></textarea>
                    </div>

                    <button class="btn btn-success pull-right" @click="update" v-show="product.name && product.price && product.description">Update</button>

                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import swal from 'sweetalert'
    export default {
        created () {
            this.getProduct()
        },
        data() {
            return {
                product: {
                    name: '',
                    price: 0,
                    description: ''
                }
            }
        },
        methods: {
            getProduct () {
                this.$http.get('api/products/' + this.$route.params.product)
                    .then(response => {
                        this.product = response.body
                    })
                    .catch(response => {
                        swal(response.status.toString(), response.body.error, "error")
                    })
            },update () {
                this.$http.put('api/products/', this.$route.params.product, this.product)
                    .then(response => {
                        // this.$router.push('/feed')
                        swal("Updated!", "Your product has been updated!", "success")
                    })
            }
        }
    }
</script>
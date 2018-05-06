<template>
    <div id="app">
        <h1>vue-ssr</h1>
        <router-link class="link" to="/">to home</router-link>
        <router-link class="link" to="/item">to item</router-link>

        <router-view class="view"></router-view>
    </div>
</template>
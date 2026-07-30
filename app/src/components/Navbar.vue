<script setup>
</script>

<template>
    <nav class="navbar">
        <div class="container">
            <ul class="nav-links">
                <li><a href="#about">About</a></li>
                <li><a href="#projects">Projects</a></li>
                <li><a href="#experience">Experience</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </div>
    </nav>
</template>

<style scoped>
.navbar {
    position: fixed;
    top: 0;
    width: 100%;
    background: #ffffff00;
    z-index: 1000;
}

.container {
    max-width: 1100px;
    margin: 0 auto;
    padding: 1.5rem 2rem;

    display: flex;
    justify-content: center;
    align-items: center;
}

.nav-links {
    display: flex;
    gap: 3rem;

    list-style: none;
    margin: 0;
    padding: 0;
}

.nav-links a {
    color: rgba(255, 255, 255, 0.69);
    text-decoration: none;
    font-size: 0.95rem;
    transition: color 0.2s ease;
}

.nav-links a:hover {
    color: white;
}
</style>
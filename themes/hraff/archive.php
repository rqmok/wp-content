<!DOCTYPE html>

<?php get_header(); ?>

    <h1 class="page-heading">Events</h1>

    <?php
        $taxonomies = get_taxonomies( array( '_builtin' => false ) );

        foreach( $taxonomies as $taxonomy ) {
    ?>
        <section class="filter-container">
            <h2><?php echo $taxonomy ?></h2>
            <ul class="filters">
                <?php
                    $terms = get_terms([
                        'taxonomy' => $taxonomy,
                        'hide_empty' => false,
                    ]);

                    foreach ( $terms as $term ) {
                ?>
                    <li><a href="<?php echo get_term_link($term, $taxonomy) ?>"><?php echo $term->name ?></a></li>
                <?php } ?>
            </ul>
        </section>
    <?php } ?>

    <section class="cards">

        <?php if (have_posts()): while (have_posts()): the_post();

            get_template_part('card', get_post_format());

        endwhile; endif; ?>

    </section>

<?php get_footer(); ?>

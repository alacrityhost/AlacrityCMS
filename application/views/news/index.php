<?php $article = $news->row_array(); for($i = 0; $i < $news->num_rows(); $i++):?>
	<h2><?php echo $article['title'] ?></h2>
	<div class="article">
		<?php echo $article['text'] ?>
	</div>
	<p><a href="/news/view/<?php echo $article['slug'] ?>">View Article</a></p>
	<?php $article = $news->next_row('array') ?>
<?php endfor ?>
<?php echo $pagination ?>
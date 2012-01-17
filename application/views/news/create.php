<h2>Create a news item</h2>

<?php echo validation_errors(); ?>

<?php echo form_open('news/create') ?>
	<h3>Create Article</h3>

	<label for="title">Title</label> 
	<input type="input" name="title" /><br />

	<label for="text">Text</label>
	<textarea name="text" id="textContent"></textarea><br />
	<?php echo display_ckeditor($ckeditor) ?>
	
	<input type="submit" name="submit" value="Create news item" /> 

</form>
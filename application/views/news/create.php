<script type="text/javascript" src="/public/js/fileuploader.js"></script>
<script type="text/javascript">
    jQuery(function(){

        var uploader = new qq.FileUploader({
		// pass the dom node (ex. $(selector)[0] for jQuery users)
	    element: document.getElementById('file-uploader'),
	    // path to server-side upload script
	    action: '/public/js/server-side/upload-handler',
	    allowedExtensions: ['jpg','jpeg','png','gif']       

    });     
</script>

<h2>Create a news item</h2>

<?php echo validation_errors(); ?>

<?php echo form_open('news/create') ?>
	<h3>Upload Files</h3>
	<div id="file-uploader">       
	    <noscript>          
	        <p>Please enable JavaScript to use file uploader.</p>
	        <!-- or put a simple form for upload here -->
	    </noscript>
	</div>
	<h3>Create Article</h3>

	<label for="title">Title</label> 
	<input type="input" name="title" /><br />

	<label for="text">Text</label>
	<textarea name="text" id="textContent"></textarea><br />
	<?php echo display_ckeditor($ckeditor) ?>
	
	<input type="submit" name="submit" value="Create news item" /> 

</form>
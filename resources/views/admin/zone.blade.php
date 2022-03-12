<script>
    var CSRF_TOKEN = document.querySelector('meta[name="csrf-token"]').getAttribute("content");
    
    Dropzone.autoDiscover = false;
    var myDropzone = new Dropzone(".dropzone",{ 
        maxFilesize: 100000,  // 1000 mb
        acceptedFiles: ".jpeg,.jpg,.png,.zip,.mp4,.mp3",
		/*thumbnailWidth: 314, 
        thumbnailHeight: 314,*/
		addRemoveLinks: true,
		/*renameFilename: function (file) {
            return file.renameFilename = new Date().getTime() + '_' + file;
        },*/
		removedfile: function(file) 
            {
                var name = file.upload.filename;
                $.ajax({
                    headers: {
                                'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                            },
                    type: 'POST',
                    url: '{{ url("/admin/file-delete") }}',
                    data: {filename: name, item_token: '{{ $item_token }}'},
                    success: function (data){
                        console.log("File deleted successfully!!");
						$('#display_message').html(data.record);
						
						
                    },
                    error: function(e) {
                        console.log(e);
                    }});
                    var fileRef;
                    return (fileRef = file.previewElement) != null ? 
                    fileRef.parentNode.removeChild(file.previewElement) : void 0;
            },
		/*maxFiles: 1,*/
		/*addRemoveLinks: true,*/
    });
	
    myDropzone.on("sending", function(file, xhr, formData) {
	   
       formData.append("_token", CSRF_TOKEN);
	   
	   
         
    }); 
	
	myDropzone.on("error", function(file, response) {
    console.log(response);
});

// on success
myDropzone.on("success", function(file, response) {
    // get response from successful ajax request
    $('#hide_message').hide();
	$('#display_message').html(response.record);
	$('#video_url1').val('');
	$('#item_file_link1').val('');
	$("#file_type1 option[value='']").attr('selected', true)
	$("#video_preview_type1 option[value='']").attr('selected', true)
    // submit the form after images upload
    // (if u want yo submit rest of the inputs in the form)
    //document.getElementById("dropzone-form").submit();
});

</script>
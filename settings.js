$(document).ready( function () {
	var uploader = new qq.FineUploaderBasic ({
		button					: document.getElementById ( "upload-btn" ),
		maxConnections	: 3,
		multiple				: true,
		validation		: {
			acceptedFiles				: ".jpeg,.jpg,.png,.rar,.zip",
			allowedExtensions		: ["jpeg", "jpg", "png", "rar", "zip"],
			sizeLimit						: 1000000000, // 1 GB
			stopOnFirstInvalidFile	: true
		},
		request			: {
			endpoint			: "uploader.cfc?method=upload",
			filenameParam	: "fileUP" // name of method argument receiving the file
		},
		chunking		: {
			enabled		: true,
			concurrent	: { enabled: true },
			partSize	: 20000000, // 20 MB
			success		: { endpoint: "uploader.cfc?method=upload" }
		},
		deleteFile		: {
			enabled		: true,
			endpoint	: "uploader.cfc?method=delete",
			method		: "POST"
		},
		resume			: { enabled		: true }, // resume failed or stopped chunked uploads.
		retry				: { enableAuto	: true }, // retry to upload if receive any error response.
		text				: {
			defaultResponseError	: "An unknown upload error was occurred." // if an error occurred on the server side
		},
		
		callbacks		: {
			onTotalProgress	: function ( totalUploadedBytes, totalBytes ) {
				var progressPercent	= ( totalUploadedBytes / totalBytes ).toFixed(2);
				if ( isNaN ( progressPercent ) )
				{
					$('#progress-bar').html('0%');
					$('#progress-bar').width(0);
				}
				else
				{
					var progress = ( progressPercent * 100 ).toFixed() + '%';
					$('#progress-bar').html(progress);
					$('#progress-bar').width(progress);
				}
			},
			
			onError	: function ( id, name, errorReason, xhrOrXdr ) {
				$('#error').html ( errorReason );
			}
		}
	 });
});

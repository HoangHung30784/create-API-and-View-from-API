<html>
	
	<button id="portfolio-posts-btn">aaaa</button>
	<div id="portfolio-posts-container"></div>
</html>

<script type="text/javascript">
	
	var portfolioPostsBtn = document.getElementById("portfolio-posts-btn");
	var portfolioPostsContainer = document.getElementById("portfolio-posts-container");

	if (portfolioPostsBtn) {
	  portfolioPostsBtn.addEventListener("click", function() {
	    var ourRequest = new XMLHttpRequest();
	    ourRequest.open('GET', 'http://hoc-php.local/php_rest_myblog-master/api/post/read.php');
	    ourRequest.onload = function() {
	      if (ourRequest.status >= 200 && ourRequest.status < 400) {

	        var data = JSON.parse(ourRequest.responseText);
	        	console.log(data);
	       createHTML(data);
	        portfolioPostsBtn.remove();
	      } else {
	        console.log("We connected to the server, but it returned an error.");
	      }
	    };

	    ourRequest.onerror = function() {
	      console.log("Connection error");
	    };

	    ourRequest.send();
	  });
	}

	function createHTML(postsData) {
		  var ourHTMLString = '';
		  for (i = 0; i < postsData.length; i++) {
		    ourHTMLString += '<h2>' + postsData[i].id+ '</h2>';
		    ourHTMLString += postsData[i].title;
		  }
		  portfolioPostsContainer.innerHTML = ourHTMLString;
}

</script>
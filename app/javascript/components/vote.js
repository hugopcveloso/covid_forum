// $(function () {
// 	$(".vote").on("click", ".upvote, .downvote", function () {
// 		var is_upvote = false
// 		var post_id = $(this).parent().data("id"),
// 			is_upvote = $(this).hasClass("upvote");
// 		$.ajaxSetup({
// 			headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
// 		});
// 		$.ajax({
// 			url: "/post/vote",
// 			method: "POST",
// 			data: { post_id: post_id, upvote: is_upvote },
// 			success: function () {
// 				console.log('success..');
// 			}
// 		})
// 	});
// });
// console.log('vanilla js is loaded');

// const voteWrapper = document.querySelectorAll('.vote');


//  for (let votingContainer of voteWrapper){ 
//     votingContainer.addEventListener("click", () => {
//         debugger
//         let post_id = currentTarget;
//         console.log('upvote for post' + post_id);
//     });
//  }

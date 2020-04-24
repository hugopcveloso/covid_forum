class VotesController < ApplicationController

  def create
    vote = Vote.new
		vote.user_id = current_user.id
		vote.upvote = params[:upvote]
		vote.votable_type = params[:votable_type]
		vote.votable_id = params[:votable_id]
		authorize vote
		if vote.votable_type == 'Post'
			existing_vote = Vote.where(user: current_user, votable_id: vote.votable_id)
		else
			existing_vote = Vote.where(user: current_user, votable_id: vote.votable_id )
		end

		@new_vote = existing_vote.size < 1
		respond_to do |format| 

			format.json {
				if existing_vote.size > 0 
					existing_vote.first.destroy
				else
					if vote.save
						render json: { success: true, test: 'test' }
					else
						render json: { success: false }, status: :unprocessable_entity
					end
				end
			}
 
		end
		@post = vote.votable_type == 'Post' ? Post.find(vote.votable_id) : Vote.find(vote.votable_id)
		@is_upvote = params[:upvote]
		authorize @post
	end
end




# 				@post = Post.find(post_id)
# 				@is_upvote = params[:upvote]
# 				authorize @post
				
# 				render "votes/create"
# 			}
# 		end
# 	end

# 	private
# 	def vote_params 
# 		params.require(:vote).permit(:post_id, :upvote)
# 	end

# end
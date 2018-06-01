class Api::V1::BlogPostsController < ApiController
  def create
    current_user = User.first
    render json: current_user.blog_post.create(blog_post_params)
  end

  private
    def blog_post_params
      params.require(:blog_post).permit(:title, :article)
    end
end

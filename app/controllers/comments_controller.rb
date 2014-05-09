class CommentsController < ApplicationController
  respond_to :html, :xml, :json
  respond_to :js, :only => [:create, :update, :destroy]
  # GET /comments
  # GET /comments.xml



  def index
    if signed_in?
      @comments = Comment.all
    else
      redirect_to root_path
    end
  end

  # GET /comments/1
  # GET /comments/1.xml
  def show
    @comment = Comment.find(params[:id])
  end

  # GET /comments/new
  # GET /comments/new.xml
  def new
    @comment = Comment.new
    #respond_with(@comment, :layout => false)
    respond_with do |format|
      format.html { render :layout => ! request.xhr? }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.xml
  def create
    @comment = Comment.create(comment_params)
    if request.xhr? || remotipart_submitted?
      sleep 1 if params[:pause]
      render :layout => false, :template => (params[:template] == 'escape' ? 'comments/escape_test' : 'comments/create'), :status => (@comment.errors.any? ? :unprocessable_entity : :ok)
    else
      if signed_in?
        redirect_to comments_path
      else
        if @comment.save
          redirect_to root_path, alert: "The resume has been upload."
        else
          redirect_to root_path, alert: "Error in your email format: #{@comment.email}"
        end
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.xml
  def update
    @comment = Comment.find(params[:id])
    respond_with do |format|
      format.html{ redirect_to @comment }
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.xml
  def destroy
    @comment = Comment.destroy(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:subject, :body, :attachment, :other_attachment, :email)
  end
end

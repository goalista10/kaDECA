class AnnouncementController < ApplicationController
  def show
    @announcement = Announcement.find(params[:id])
  end

  def create
    @create_announcement = Announcement.new(announcement_params)
    if @create_announcement.save
      flash.notice = 'Announcement created'
      redirect_to '/admin/announcements'
    else
      @error = @create_announcement.errors.full_messages.first
      flash.alert = @error
      redirect_to '/admin/add_announcement'
    end
  end

  def destroy
    @to_be_deleted = Announcement.find(params[:id])
    @to_be_deleted.destroy
    flash.notice = 'Announcement deleted'
    redirect_to '/admin/announcements'
  end

  def edit
    @to_be_updated = Announcement.find(params[:id])
    render 'announcement/edit'
  end

  def update
    @update_announcement = Announcement.find(params[:id])
    if @update_announcement.update(announcement_params)
      flash.notice = 'Announcement updated'
      redirect_to '/admin/announcements'
    else
      @error = @update_announcement.errors.full_messages.first
      flash.alert = @error
      redirect_to edit_announcement_path(params[:id])
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def announcement_params
    params.require(:announcement).permit(:title, :body, :category)
  end
end

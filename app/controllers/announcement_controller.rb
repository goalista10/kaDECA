class AnnouncementController < ApplicationController
    def show
    end

    def create
        @create_announcement = Announcement.new(announcement_params)
        if @create_announcement.save
            flash.notice = "Announcement created"
            redirect_to "/admin/announcements"
        else
            @error = @create_announcement.errors.full_messages.first
            flash.alert =  @error
            redirect_to "/admin/add_announcement"
        end
    end

    def destroy
     
    end

    def edit

    end

    def update

    end
    private
    # Only allow a list of trusted parameters through.
    def announcement_params
      params.require(:announcement).permit(:title,:body)
    end
  end
class VersionsController < ApplicationController
  def revert
    @version = PaperTrail::Version.find(params[:id])
    if @version.reify
      @version.reify.save
    else
      @version.item.destroy
    end
    redirect_to :back, notice: "Successfully reverted #{@version.event} action."
  end
end

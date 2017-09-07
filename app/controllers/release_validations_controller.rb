class ReleaseValidationsController < InheritedResources::Base

  private

    def release_validation_params
      params.require(:release_validation).permit(:request_id, :aasm_state, :scheduled_at)
    end
end


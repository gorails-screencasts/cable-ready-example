class Card < ApplicationRecord
  include CableReady::Broadcaster

  after_update do
    cable_ready["cards"].morph(
      selector: "#" + ActionView::RecordIdentifier.dom_id(self),
      html: ApplicationController.render(self)
    )
    cable_ready.broadcast
  end
end

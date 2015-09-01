class MemberDirectoryProfile < ActiveRecord::Base

  # Provides the key LINK between internal behavioural model (for Skills Game etc)
  # and the active directory profile.
  #
  # Store only key attributes/ID that allow us to uniquely query AD to retrieve the required contact
  # Assume that Staff Member could change department etc.
  # Might only be the directry UID && Image_URI...

  belongs_to :member

end
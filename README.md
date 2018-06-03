# RubyButtonAnimationFlowstone
Ruby bitmap button looping animation

# Ruby bitmap button looping animation by Faxi Nadu
# http://www.faxinadu.net
# http://www.oceanswift.net 

# - Resize all bitmaps quickly by setting the size variable in the draw method.
# - Set the animation time by setting the @rate variable. Minimum 0.1
#
# To add bitmaps:
# 1) Connect bitmaps to the additional inputs.
# 2) Copy paste the last "when" in the case statement of the event method.
# 3) Increment the "when" by 1 from the previous bitmap.
# 4) Increment @on in the new "when" by 1.
# 5) Make sure the last "when" sets @on to 1 so the animation loops.
#
# Once saved within a schematic, when the schematic is loaded the animation will run automatically.

##########################################################################
# Ruby bitmap button looping animation by Faxi Nadu
# http://www.faxinadu.net
# http://www.oceanswift.net 
##########################################################################
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
# Once saved within a schematic, when the schematic is loaded the animation 
# will run automatically.
##########################################################################

def init
	@on = 1
	@rate = 0.1
end

def draw i,v

	size = 0.5
	
	case @on
	
	when 1
	v.drawBitmap @bitmap1,[0,0,@bitmap1.width*size,@bitmap1.height*size]	
	when 2 
	v.drawBitmap @bitmap2,[0,0,@bitmap2.width*size,@bitmap2.height*size]	
	when 3
	v.drawBitmap @bitmap3,[0,0,@bitmap3.width*size,@bitmap3.height*size]	
	when 4
	v.drawBitmap @bitmap4,[0,0,@bitmap4.width*size,@bitmap4.height*size]	
	when 5
	v.drawBitmap @bitmap5,[0,0,@bitmap5.width*size,@bitmap5.height*size]	
	when 6
	v.drawBitmap @bitmap6,[0,0,@bitmap6.width*size,@bitmap6.height*size]	
	when 7 
	v.drawBitmap @bitmap7,[0,0,@bitmap7.width*size,@bitmap7.height*size]	
	when 8
	v.drawBitmap @bitmap8,[0,0,@bitmap8.width*size,@bitmap8.height*size]	
	when 9
	v.drawBitmap @bitmap9,[0,0,@bitmap9.width*size,@bitmap9.height*size]	
	when 10
	v.drawBitmap @bitmap10,[0,0,@bitmap10.width*size,@bitmap10.height*size]	
	when 11
	v.drawBitmap @bitmap11,[0,0,@bitmap11.width*size,@bitmap11.height*size]	
	when 12 
	v.drawBitmap @bitmap12,[0,0,@bitmap12.width*size,@bitmap12.height*size]	
	when 13
	v.drawBitmap @bitmap13,[0,0,@bitmap13.width*size,@bitmap13.height*size]	
	when 14
	v.drawBitmap @bitmap14,[0,0,@bitmap14.width*size,@bitmap14.height*size]	
	when 15
	v.drawBitmap @bitmap15,[0,0,@bitmap15.width*size,@bitmap15.height*size]	
	when 16
	v.drawBitmap @bitmap16,[0,0,@bitmap16.width*size,@bitmap16.height*size]	
	when 17 
	v.drawBitmap @bitmap17,[0,0,@bitmap17.width*size,@bitmap17.height*size]	
	when 18
	v.drawBitmap @bitmap18,[0,0,@bitmap18.width*size,@bitmap18.height*size]	
	when 19
	v.drawBitmap @bitmap19,[0,0,@bitmap19.width*size,@bitmap19.height*size]	
	when 20
	v.drawBitmap @bitmap20,[0,0,@bitmap20.width*size,@bitmap20.height*size]
		
	end
end

def event i,v,t
	if i == 1
	case @on

		# bitmap 1
		when 1
		redraw
		@on = 2

		# bitmap 2
		when 2
		redraw
		@on = 3

		# bitmap 3
		when 3
		redraw
		@on = 4
	
		# bitmap 4
		when 4 
		redraw
		@on = 1  #make sure the last bitmap sets @on to 1.
		
	end
	
	output 0,i
	input 1,output,t+@rate
	end
	
end

def isInMousePoint x,y
	true
end

def mouseLDown x,y
	captureMouse 
	mouseMoveCaptured x,y
	redraw
end

def mouseMoveCaptured x,y
end

def mouseLUpCaptured x,y
	output 1,1
	releaseMouse 
	redraw
end

def mouseCursor x,y
	2
end	


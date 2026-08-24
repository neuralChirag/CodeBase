Select x, y, z,
    Case
        When x+y > z and x+z > y and y+z > x then 'Yes'
        else  'No' END
    as triangle
from Triangle
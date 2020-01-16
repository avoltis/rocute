# Clock

### Description
The 'Clock' component is a digital clock containing a label. Depending on your device's clock settings, this will be displayed in a 12 hour or 24 hour format. If the device's settings cannot be found for any reason, the clock will default to a 12 hour format.
To utilize this tool,
 - The Clock can be added as a normal Group component to your SceneGraph XML or BrightScript.
 - There are no required fields to get it to work.

### Usage
| Field | Type | Default | Options | Required | AccessPermission | Description |
| ----------- | ----------- | ----------- | ----------- | ----------- | ----------- | ----------- |
| fontUrl  |  string  | font:MediumSystemFont | true | false | READ_WRITE | Its used to set the font
| fontSize |  integer | System value | true | false | READ_WRITE | Its used to set the font size
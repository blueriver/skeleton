<!--
   Copyright 2012 Blue River Interactive

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
-->
<theme>
	<extensions>
		<extension type="Site">
			<attributeset name="Skeleton Theme Options">
	
				<!-- skeletonUseTabbedNav -->
				<attribute 
					name="skeletonUseTabbedNav" 
					label="Use Tabs for Primary Nav?"
					hint="If No, then primary nav links will output as normal links."
					type="RadioGroup"
					defaultValue="true"
					required="false"  
					validation="" 
					regex=""
					message=""
					optionList="true^false"
					optionLabelList="Yes^No" />
					
				<!-- displayResizeImage -->
				<attribute 
					name="displayResizeImage" 
					label="Display Resize Image?"
					hint="If Yes, will display a Resize image in the lower right hand corner of the screen."
					type="RadioGroup"
					defaultValue="true"
					required="false"  
					validation="" 
					regex=""
					message=""
					optionList="true^false"
					optionLabelList="Yes^No" />

			</attributeset>
		</extension>
	</extensions>
</theme>
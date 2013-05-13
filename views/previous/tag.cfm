<cfparam name="rc.item">
<cfoutput>
<cfscript>
	prefix = "cf";
	tagInfo = rc.taginfo;

</cfscript>


<section id="function_description">
  <div class="page-header">
    <h1>#prefix##rc.item# <small>Information about the #prefix##rc.item# tag</small></h1>
  </div>
	<div class="row">
		<div class="span16">
			<h3>Description</h3>
			<p>#tagInfo.getDescription()#</p>
		</div>	
		<div class="span16">
			<h3>Syntax</h3>
			
			<code>
				<!--- Body type: free, prohibited --->
				&lt;#prefix##rc.item#
				<cfloop array="#tagInfo.getAttributes()#" index="attr">
				<cfif attr.getRequired()>
				#attr.getName()# = "#attr.getType().getName()#"<br>
				<cfelse>
				[#attr.getName()# = "#attr.getType().getName()#"]<br>				
				</cfif>
				</cfloop>

				<cfif tagInfo.getBodyType() EQ "prohibited">
					/&gt;
				</cfif>
				
			</code>
			<br>



			<!---			
			This tag also supports CFSCript syntax:
			<code>
			
			</code>
			--->
		</div>
		
		
		<div class="span16">
			<h3>Attributes</h3>
			<table>
				<thead>
					<tr>
						<th>Attributes</th>
						<th>Required</th>
						<th>Description</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					<cfloop array="#tagInfo.getAttributes()#" index="attr">
						<cfset data = tagInfo.attributes[attr]>
					<tr>
						<td>#attr#</td>
						<td>#data.required#</td>
						<td>#data.description#</td>
						<td>#data.status#</td>
					</tr>
					</cfloop>
				</tbody>
			</table>
			<cfdump var="#tagInfo#" expand="false">
		</div>	

		<div class="span16 well">
			<div id="disqus_thread"></div>
		    <script type="text/javascript">
		        /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
		        var disqus_shortname = 'railodocs'; // required: replace example with your forum shortname
				var disqus_identifier = "tag_#rc.item#"; //Tag identifier
				
		        /* * * DON'T EDIT BELOW THIS LINE * * */
		        (function() {
		            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
		            dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
		            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
		        })();
		    </script>
		    <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
		    <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
    

		</div>

	</div>
	
</section>

</cfoutput>
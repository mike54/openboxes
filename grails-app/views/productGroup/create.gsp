
<%@ page import="org.pih.warehouse.product.ProductGroup"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="custom" />
<g:set var="entityName"
	value="${warehouse.message(code: 'productGroup.label', default: 'ProductGroup')}" />
<title><warehouse:message code="default.create.label"
		args="[entityName]" /></title>
<!-- Specify content to overload like global navigation links, page titles, etc. -->
<content tag="pageTitle">
<warehouse:message code="default.create.label" args="[entityName]" /></content>
<style type="text/css">
.CheckBoxList {
	height: 300px;
	overflow: auto;
	overflow-x: hidden;
	border: 0px solid #000;
	list-style-type: none;
	margin: 0;
	padding: 0px
}

.CheckBoxList li {
	padding: 2px;
}

.CheckBoxList input {
	padding-right: 5px;
}
</style>

</head>
<body>
	<div class="body">
		<g:if test="${flash.message}">
			<div class="message">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${productGroupInstance}">
			<div class="errors">
				<g:renderErrors bean="${productGroupInstance}" as="list" />
			</div>
		</g:hasErrors>
		<g:form action="save" method="post">
			<fieldset>
				<div class="dialog">
					<table>
						<tbody>

							<tr class="prop">
								<td valign="top" class="name"><label for="description"><warehouse:message
											code="productGroup.description.label" default="Description" /></label>
								</td>
								<td valign="top"
									class="value ${hasErrors(bean: productGroupInstance, field: 'description', 'errors')}">
									<g:textField name="description" class="text"
										value="${productGroupInstance?.description}" size="60" />
								</td>
							</tr>
							<tr class="prop">
								<td valign="top" class="name"><label for="category"><warehouse:message
											code="productGroup.category.label" default="Category" /></label></td>
								<td valign="top" class="value">
									<g:selectCategory_v2
										id="category.id" name="category.id"
										value="${productGroupInstance?.category?.id }"/>
								</td>
							</tr>
							
							
							<%-- 
	                            <tr class="prop">
	                                <td valign="top" class="name">
	                                    <label for="dateCreated"><warehouse:message code="productGroup.dateCreated.label" default="Date Created" /></label>
	                                </td>
	                                <td valign="top" class="value ${hasErrors(bean: productGroupInstance, field: 'dateCreated', 'errors')}">
	                                    <g:datePicker name="dateCreated" precision="minute" value="${productGroupInstance?.dateCreated}"  />
	                                </td>
	                            </tr>
	                        
	                            <tr class="prop">
	                                <td valign="top" class="name">
	                                    <label for="lastUpdated"><warehouse:message code="productGroup.lastUpdated.label" default="Last Updated" /></label>
	                                </td>
	                                <td valign="top" class="value ${hasErrors(bean: productGroupInstance, field: 'lastUpdated', 'errors')}">
	                                    <g:datePicker name="lastUpdated" precision="minute" value="${productGroupInstance?.lastUpdated}"  />
	                                </td>
	                            </tr>
	                        	--%>

							<tr class="prop">
								<td valign="top"></td>
								<td valign="top">
									<div class="buttons">
										<g:submitButton name="create" class="save"
											value="${warehouse.message(code: 'default.button.create.label', default: 'Create')}" />

										<g:link action="list">
											${warehouse.message(code: 'default.button.cancel.label', default: 'Cancel')}
										</g:link>

									</div>
								</td>
							</tr>

						</tbody>
					</table>
				</div>
			</fieldset>
		</g:form>
	</div>
	
<script>
	$(document).ready(function() {			
		$("#category\\.id").change(function() {
		    $(this).closest("form").submit();
		});
	});		
</script>	
</body>
</html>
<#if page??>
	<div class="page">
		<#if !page.firstPage>
			<a href="${getSitePath(getPage(category.url,page.prePage))}">上一页</a>
		<#else>
			<span>上一页</span>
		</#if>
		<#assign start=1/>
		<#if (page.pageIndex-5) gt start>
			<#assign start=page.pageIndex-4/>
		</#if>
		<#assign end=page.totalPage/>
		<#if (page.pageIndex+5) lt end>
			<#assign end=page.pageIndex+4/>
		</#if>
		<#if start gt 1>
			<a href="${getSitePath(getPage(category.url,1))}">1</a> ...
		</#if>
		<#list start..end as n><a href="${getSitePath(getPage(category.url,n))}"<#if n=page.pageIndex> class="selected"</#if>>${n}</a></#list>
		<#if end lt page.totalPage>
			... <a href="${getSitePath(getPage(category.url,page.totalPage))}">${page.totalPage}</a>
		</#if>
		<#if !page.lastPage>
			<a href="${getSitePath(getPage(category.url,page.nextPage))}">下一页</a>
		<#else>
			<span>下一页</span>
		</#if>
	</div>
</#if>
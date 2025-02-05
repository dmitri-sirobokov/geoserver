<#include "common-header.ftl">
<h2>${model.id}</h2>
<ul>
<#if model.title??> 
<li><b>Title</b>: <span id="${model.htmlId}_title">${model.title}</span><br/></li>
</#if>
<#if model.description??>
<li><b>Description</b>: <span id="${model.htmlId}_description">${model.description!}</span><br/></li>
</#if>
<#assign se = model.extent.spatial>
<li><b>Geographic extents</b>: ${se.getMinX()}, ${se.getMinY()}, ${se.getMaxX()}, ${se.getMaxY()}.</li>
</ul>

Tiles available for this collection:
<ul>
<#if model.dataTiles>
<li><a href="${model.getLinkUrl('dataTiles', 'text/html')!}">Data tiles</a></li> 
</#if>
<#if model.mapTiles>
<li><a href="${model.getLinkUrl('mapTiles', 'text/html')!}">Map tiles</a></li>
</#if>
</ul>

<#include "common-footer.ftl">

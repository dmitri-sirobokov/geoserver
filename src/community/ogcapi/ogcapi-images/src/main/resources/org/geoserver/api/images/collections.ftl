<#include "common-header.ftl">
       <h2>GeoServer Image Mosaics Collections</h2>
       <p>This document lists all the image collections available in the Images service.<br/>
       This document is also available as <#list model.getLinksExcept(null, "text/html") as link><a href="${link.href}">${link.type}</a><#if link_has_next>, </#if></#list>.</p>
       
       <#list model.collections as collection>
       <h2><a id="html_${collection.htmlId}_link" href="${serviceLink("ogc/images/collections/${collection.encodedId}", "text/html")}">${collection.id}</a></h2>
       <ul>
         <#if collection.title??> 
         <li><b>Title</b>: <span id="${collection.htmlId}_title">${collection.title}</span><br/></li>
         </#if>
         <#if collection.description??>
         <li><b>Description</b>: <span id="${collection.htmlId}_description">${collection.description!}</span><br/></li>
         </#if>
         <#assign se = collection.extent.spatial>
         <li><b>Geographic extents</b>: ${se.getMinX()}, ${se.getMinY()}, ${se.getMaxX()}, ${se.getMaxY()}.</li>
         </li>
         </ul>
       </#list>
<#include "common-footer.ftl">

<!-- begin index.tpl -->
{if !empty($PLUGIN_INDEX_CONTENT_BEFORE)}{$PLUGIN_INDEX_CONTENT_BEFORE}{/if}
<div class="row">
<nav class="navbar" role="navigation">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">{$PAGE_TITLE}</a>
  </div>
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
    {if !empty($image_orders)}
		<li class="dropdown"><a title="{'Sort order'|@translate}" rel="nofollow"><span class="glyphicon glyphicon-sort">&nbsp;</span>{'Sort order'|@translate}</a>
      <ul class="dropdown-menu">
			{foreach from=$image_orders item=image_order name=loop}
      <li>
			  {if $image_order.SELECTED}
          <span class="glyphicon glyphicon-check"></span>{$image_order.DISPLAY}
			  {else}
			    <span>&nbsp; </span><a href="{$image_order.URL}" rel="nofollow">{$image_order.DISPLAY}</a>
			  {/if}
      </li>
			{/foreach}
      </ul>
		</li>
    {/if}
    {if !empty($image_derivatives)}
		<li class="dropdown"><a title="{'Photo sizes'|@translate}" rel="nofollow"><span class="glyphicon glyphicon-fullscreen"></span>{'Photo sizes'|@translate}</a>
      <ul class="dropdown-menu">
			{foreach from=$image_derivatives item=image_derivative name=loop}
      <li>
			  {if $image_derivative.SELECTED}
			    <span class="glyphicon glyphicon-check"></span>{$image_derivative.DISPLAY}
			  {else}
			    <span>&nbsp; </span><a href="{$image_derivative.URL}" rel="nofollow">{$image_derivative.DISPLAY}</a>
			  {/if}
      </li>
			{/foreach}
      </ul>
		</li>
    {/if}

    {if isset($favorite)}
		<li><a href="{$favorite.U_FAVORITE}" title="{'delete all photos from your favorites'|@translate}" rel="nofollow">
			<span class="glyphicon glyphicon-star" alt="{'delete all photos from your favorites'|@translate}"></span>
		</a></li>
{/if}
{if isset($U_CADDIE)}
		<li><a href="{$U_CADDIE}" title="{'Add to caddie'|@translate}">
			<span class="glyphicon glyphicon-plus-sign" alt="{'Caddie'|@translate}"</span>
		</a></li>
{/if}
{if isset($U_EDIT)}
		<li><a href="{$U_EDIT}" title="{'Edit album'|@translate}">
			<span class="glyphicon glyphicon-edit" alt="{'Edit'|@translate}"></span>
		</a></li>
{/if}
{if isset($U_SLIDESHOW)}
		<li><a href="{$U_SLIDESHOW}" title="{'slideshow'|@translate}">
			<span class="glyphicon glyphicon-film" alt="{'slideshow'|@translate}"></span>
		</a></li>
{/if}
{if isset($U_MODE_FLAT)}
		<li><a href="{$U_MODE_FLAT}" title="{'display all photos in all sub-albums'|@translate}">
			<span class="glyphicon glyphicon-resize-full" alt="{'display all photos in all sub-albums'|@translate}"></span>
		</a></li>
{/if}
{if isset($U_MODE_NORMAL)}
		<li><a href="{$U_MODE_NORMAL}" title="{'return to normal view mode'|@translate}">
			<span class="glyphicon glyphicon-resize-small" alt="{'return to normal view mode'|@translate}"></span>
		</a></li>
{/if}
{if isset($U_MODE_POSTED)}
		<li><a href="{$U_MODE_POSTED}" title="{'display a calendar by posted date'|@translate}">
			<span class="glyphicon glyphicon-calendar" alt="{'Calendar'|@translate}"></span>
		</a></li>
{/if}
{if isset($U_MODE_CREATED)}
		<li><a href="{$U_MODE_CREATED}" title="{'display a calendar by creation date'|@translate}">
			<span class="glyphicon glyphicon-calendar" alt="{'Calendar'|@translate}"></span>
		</a></li>
{/if}
{if !empty($PLUGIN_INDEX_ACTIONS)}{$PLUGIN_INDEX_ACTIONS}{/if}
  </div>
</nav>

{if isset($chronology_views)}
<nav class="navbar" role="navigation">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">{$chronology.TITLE}</a>
  </div>
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
		<li class="dropdown"><a href="#">{'View'|@translate}</a>
	    {foreach from=$chronology_views item=view}{if $view.SELECTED}{$view.CONTENT}{/if}{/foreach}
      <ul class="dropdown-menu">
		  {foreach from=$chronology_views item=view name=loop}
      <li>
		    <span{if !$view.SELECTED} style="visibility:hidden"{/if}>&#x2714; </span><a href="{$view.VALUE}">{$view.CONTENT}</a>
			  {if $view.SELECTED}
          <span class="glyphicon glyphicon-check"></span><a href="{$view.VALUE}">{$view.CONTENT}</a>
			  {else}
          <span>&nbsp;</span><a href="{$view.VALUE}">{$view.CONTENT}</a>
			  {/if}
      </li>
			{/foreach}
      </ul>
		</li>
  </div>
</nav>
{/if}
</div>{* <!-- titrePage --> *}

{if !empty($PLUGIN_INDEX_CONTENT_BEGIN)}{$PLUGIN_INDEX_CONTENT_BEGIN}{/if}

{if !empty($category_search_results)}
<div class="row">
  <p>{'Album results for'|@translate} <strong>{$QUERY_SEARCH}</strong> :
	<em><strong>
	{foreach from=$category_search_results item=res name=res_loop}
	{if !$smarty.foreach.res_loop.first} &mdash; {/if}
	{$res}
	{/foreach}
	</strong></em>
  </p>
</div>
{/if}

{if !empty($tag_search_results)}
<div class="row">
  <p>{'Tag results for'|@translate} <strong>{$QUERY_SEARCH}</strong> :
	<em><strong>
	{foreach from=$tag_search_results item=tag name=res_loop}
	{if !$smarty.foreach.res_loop.first} &mdash; {/if} <a href="{$tag.URL}">{$tag.name}</a>
	{/foreach}
	</strong></em>
  </p>
</div>
{/if}

{if isset($FILE_CHRONOLOGY_VIEW)}
{include file=$FILE_CHRONOLOGY_VIEW}
{/if}

{if !empty($CONTENT_DESCRIPTION)}
<div class="row">
	{$CONTENT_DESCRIPTION}
</div>
{/if}

{if !empty($CATEGORIES)}{$CATEGORIES}{/if}
{if !empty($cats_navbar)}
	{include file='navigation_bar.tpl'|@get_extent:'navbar' navbar=$cats_navbar}
{/if}

{if !empty($THUMBNAILS)}
  {$THUMBNAILS}
{/if}
{if !empty($thumb_navbar)}
	{include file='navigation_bar.tpl'|@get_extent:'navbar' navbar=$thumb_navbar}
{/if}

{if !empty($PLUGIN_INDEX_CONTENT_END)}{$PLUGIN_INDEX_CONTENT_END}{/if}
</div>{* <!-- content --> *}
{if !empty($PLUGIN_INDEX_CONTENT_AFTER)}{$PLUGIN_INDEX_CONTENT_AFTER}{/if}
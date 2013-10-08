<!-- begin menubar_identification -->
<div class="well">
<h4>{'Specials'|@translate}</h4>
  <ul class="nav nav-pills nav-stacked">
  {foreach from=$block->data item=link}
    <li><a href="{$link.URL}" title="{$link.TITLE}"{if isset($link.REL)} {$link.REL}{/if}>{$link.NAME}</a></li>
  {/foreach}
  </ul>
</div>
<!-- end menubar_identification -->

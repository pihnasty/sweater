<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <diw class="mb-1" >Add new user</diw>
    ${message?ifExists}
    <@l.login "/registration" true/>
</@c.page>
<#macto login path>
    <form action="${path}" method="post">
  <div><label> User Name : <input type="text" name="username"/> </label></div>
  <div><label> Password: <input type="password" name="password"/> </label></div>
  <input type="hidden" name="_csrf" value="${_csrf.token}"/>
  <diw><input type="submit" value="Sing In" /></diw>
</form>
</#macro>

<#macto logout >
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="submit" value="Sign Out"/>
    </form>
</#macro>
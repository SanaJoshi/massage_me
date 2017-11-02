# README

* Troubleshooting
  * Problem
    ```
    syntax error, unexpected keyword_ensure, expecting end-of-input ensure ^
    ```
  * Solution
<div class="field">
  <%= form_for @photo do |form| %>
<%= form.hidden_field :image, value: @photo.cached_image_data %>
<%= form.file_field :image %>
<% end %>
</div>


<!-- index html body -->

% @products.each do |product| %>
  <tr>
    <td><img src="<%=product.image_url %>"></td>

    <td><%= product.name %></td>
    <td><%= product.price %></td>
    <td><%= product.discription %></td>
    <td><%= link_to 'Show', product %></td>
    <td><%= link_to 'Edit', edit_product_path(product) %></td>
    <td><%= link_to 'Destroy', product, method: :delete, data: { confirm: 'Are you sure?' } %></td>
  </tr>
<% end %>
<td><img src="<%=product.image_url %>"></td>


index.html
<p id="notice"><%= notice %></p>

<h1>Products</h1>

<table>
  <thead>
    <tr>
      <!-- <th>Image data</th> -->
      <!-- <th>Name</th>
      <th>Price</th>
      <th>Discription</th> -->
      <!-- <th colspan="3"></th> -->
    </tr>
  </thead>

  <tbody>
    <div class="row">
    <% @products.each do |product| %>

      <div class="col-md-4">

      <tr>

        <!-- <td><%#= product.name %></td>
        <td><%#= product.price %></td>
        <td><%#= product.discription %></td> -->
        <%= image_tag(product.image_url, width: "100%", height: "100%")%>
      </div>
        <td><%= link_to 'Show', product %></td>
        <td><%= link_to 'Edit', edit_product_path(product) %></td>
        <td><%= link_to 'Destroy', product, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    </div>
    <% end %>
  </tbody>
</table>

<br>

<%= link_to 'New Product', new_product_path %>


<table class="table table-hover">
    <thead>
    <tr>
        <th scope="col">Item ID</th>
        <th scope="col">Product ID</th>
        <th scope="col">Description</th>
        <th scope="col">Price</th>
        <th scope="col">Purchase</th>
        <th scope="col">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspADD</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach>
    <tr>
        <th scope="row"><br />1</th>
        <td><br />Mark</td>
        <td><br />Otto</td>
        <td><br />$20</td>
        <td>
            <button type="button" class="btn btn-info btn-sm" onclick="searchPage('cartServlet')" href="javascript:void(0)">Buy</button>
        </td>
        <td>
            <button onclick="checkAnimal2(${Item.animalId})" type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#exampleModal">Cart</button>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">消息</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <strong>已成功添加至购物车！</strong>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-sm" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script>
    function checkAnimal2(animalid) {
        $.ajax({
            type: "post",
            url: "/animalItemServlet?animalid=" + animalid,
            data: {},
            success: function (data) {
            }
        })
    }
</script>
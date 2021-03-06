<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
    <div class="row">
        <div class="col-md1-1"></div>
        <div class="col-md1-10">
    <div class="pb-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                    <!-- Shopping cart table -->
                    <div class="table-responsive">
                        <form id="personInfo" action="javascript:void(0)" method="post">
                            <table class="table">
<%--                                <thead>--%>
<%--                                <tr>--%>
<%--                                    <th scope="col" class="border-0 bg-light" colspan="2">--%>
<%--                                        <div class="p-2 px-3 text-uppercase" style="background-color: #a6a5c4">Profile Information</div>--%>
<%--                                    </th>--%>
<%--                                </tr>--%>
<%--                                </thead>--%>
<%--                                <tbody>--%>
<%--                                <tr>--%>
<%--                                    <th scope="row" class="border-0">--%>
<%--                                        <div class="p-2">--%>
<%--                                            <div class="ml-3 d-inline-block align-middle">--%>
<%--                                                <h5 class="mb-0">Language Preference:</h5>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </th>--%>
<%--                                    <td class="border-0 align-middle">--%>
<%--                                        <label>--%>
<%--                                            <select>--%>
<%--                                                <option value="volvo">English</option>--%>
<%--                                                <option value="saab">Chinese</option>--%>
<%--                                                <option value="opel">Japanese</option>--%>
<%--                                            </select>--%>
<%--                                        </label>--%>
<%--                                    </td>--%>
<%--                                </tr>--%>
<%--                                <tr>--%>
<%--                                    <th scope="row" class="border-0">--%>
<%--                                        <div class="p-2">--%>
<%--                                            <div class="ml-3 d-inline-block align-middle">--%>
<%--                                                <h5 class="mb-0">Favourite Category:</h5>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </th>--%>
<%--                                    <td class="border-0 align-middle">--%>
<%--                                        <label>--%>
<%--                                            <select>--%>
<%--                                                <option value="fish">Fish</option>--%>
<%--                                                <option value="dog">Dog</option>--%>
<%--                                                <option value="cat">Cat</option>--%>
<%--                                                <option value="parrot">parrot</option>--%>
<%--                                            </select>--%>
<%--                                        </label>--%>
<%--                                    </td>--%>
<%--                                </tr>--%>
<%--                                </tbody>--%>
                                <thead>
                                <tr>
                                    <th scope="col" class="border-0 bg-light" colspan="2">
                                        <div class="p-2 px-3 text-uppercase" style="background-color: #a6a5c4">Billing Address</div>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th scope="row" class="border-0">
                                        <div class="p-2">
                                            <div class="ml-3 d-inline-block align-middle">
                                                <h5 class="mb-0">Name:</h5>
                                            </div>
                                        </div>
                                    </th>
                                    <td class="border-0 align-middle">
                                        <input id="Name" name="Name" id type="text" style="width:50%;" value="${address.name}">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" class="border-0">
                                        <div class="p-2">
                                            <div class="ml-3 d-inline-block align-middle">
                                                <h5 class="mb-0">NickName:</h5>
                                            </div>
                                        </div>
                                    </th>
                                    <td class="border-0 align-middle">
                                        <input id="NickName" name="NickName" type="text" style="width:50%;" value="${user.nickname}">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" class="border-0">
                                        <div class="p-2">
                                            <div class="ml-3 d-inline-block align-middle">
                                                <h5 class="mb-0">Address:</h5>
                                            </div>
                                        </div>
                                    </th>
                                    <td class="border-0 align-middle">
                                        <input id="Address" name="Address" type="text" style="width:50%;" value="${address.detailedAddress}">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" class="border-0">
                                        <div class="p-2">
                                            <div class="ml-3 d-inline-block align-middle">
                                                <h5 class="mb-0">Phone Number:</h5>
                                            </div>
                                        </div>
                                    </th>
                                    <td class="border-0 align-middle">
                                        <input id="PhoneNumber" name="PhoneNumber" type="text" style="width:50%;" value="${user.phoneNumber}">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" class="border-0">
                                        <div class="p-2">
                                            <div class="ml-3 d-inline-block align-middle">
                                                <h5 class="mb-0">City:</h5>
                                            </div>
                                        </div>
                                    </th>
                                    <td class="border-0 align-middle">
                                        <input id="City" name="City" type="text" style="width:50%;" value="${address.city}">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" class="border-0">
                                        <div class="p-2">
                                            <div class="ml-3 d-inline-block align-middle">
                                                <h5 class="mb-0">State:</h5>
                                            </div>
                                        </div>
                                    </th>
                                    <td class="border-0 align-middle">
                                        <input id="State" name="State" type="text" style="width:50%;" value="${address.province}">
                                    </td>
                                </tr>

                                <tr>
                                    <th scope="row" class="border-0">
                                        <div class="p-2">
                                            <div class="ml-3 d-inline-block align-middle">
                                                <h5 class="mb-0">Country:</h5>
                                            </div>
                                        </div>
                                    </th>
                                    <td class="border-0 align-middle">
                                        <input id="Country" name="Country" type="text" style="width:50%;" ${address.county}>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" class="border-0">
                                        <div class="p-2">
                                            <div class="ml-3 d-inline-block align-middle">
                                                <h4 class="mb-0"><b>Password</b></h4>
                                            </div>
                                        </div>
                                    </th>
                                    <td class="border-0 align-middle">
                                        <input type="password" id="passWord2" name="passWord2" type="text" style="width:50%;">
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <input type="submit" class="btn btn-success btn-sm" onclick="postPersonData()" value="Save"/>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <input type="reset" class="btn btn-info btn-sm" value="Reset"/>
                        </form>
                    </div>
                    <!-- End -->
                </div>
            </div>
        </div>
    </div>
        </div>
        <div class="col-md1-1"></div>
    </div>
</div>
<script>

    function postPersonData() {
        $.ajax({
            type: "post",
            url: "/modifyInfo",
            data: $('#personInfo').serialize(),
            success: function (data) {
                console.log(data);
                $("#changePart").html(data);
            }
        })
    }

</script>

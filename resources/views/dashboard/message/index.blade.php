<?php $page="messages";?>

@extends('layouts.master')

@section('css')
    <!-- Print -->
    <style>
        @media print {
            .notPrint {
                display: none;
            }
        }
    </style>
    @section('title')
        {{ trans('main.Messages') }}
    @stop
@endsection



@section('content')
            <!-- validationNotify -->
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <!-- success Notify -->
            @if (session()->has('success'))
                <script id="successNotify">
                    window.onload = function() {
                        notif({
                            msg: "تمت العملية بنجاح",
                            type: "success"
                        })
                    }
                </script>
            @endif

            <!-- error Notify -->
            @if (session()->has('error'))
                <script id="errorNotify">
                    window.onload = function() {
                        notif({
                            msg: "لقد حدث خطأ.. برجاء المحاولة مرة أخرى!",
                            type: "error"
                        })
                    }
                </script>
            @endif

            <!-- canNotDeleted Notify -->
            @if (session()->has('canNotDeleted'))
                <script id="canNotDeleted">
                    window.onload = function() {
                        notif({
                            msg: "لا يمكن الحذف لوجود بيانات أخرى مرتبطة بها..!",
                            type: "error"
                        })
                    }
                </script>
            @endif
            

            <!-- Page Wrapper -->
            <div class="page-wrapper">
                <div class="content container-fluid">
                    <!-- Page Header -->
                    <div class="page-header">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="page-title">{{ trans('main.Messages') }}</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ trans('main.Dashboard') }}</a></li>
                                    <li class="breadcrumb-item active">{{ trans('main.Messages') }}</li>
                                </ul>
                            </div>
                            <div class="col-auto">
                                <!-- <button type="button" class="btn add-button me-2" data-bs-toggle="modal" data-bs-target="#addModal">
                                    <i class="fas fa-plus"></i>
                                </button> -->
                                <button type="button" class="btn filter-btn me-2" id="filter_search">
                                    <i class="fas fa-filter"></i>
                                </button>
                                <button type="button" class="btn" id="btn_delete_selected" title="{{ trans('main.Delete Selected') }}" style="display:none; width: 42px; height: 42px; justify-content: center; align-items: center; color: #fff; background: red; border: 1px solid red; border-radius: 5px;">
                                    <i class="fas fa-trash-alt"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <!-- /Page Header -->

                    <!-- Search Filter -->
                    <div class="card filter-card" id="filter_inputs" @if($name || $from_date || $to_date) style="display:block" @endif>
                        <div class="card-body pb-0">
                            <form action="{{ route('message.index') }}" method="get">
                                <div class="row filter-row">
                                    <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label>{{ trans('main.Name') }}</label>
                                            <input class="form-control" type="text" name="name" value="{{ $name }}">
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label>{{ trans('main.From Date') }}</label>
                                            <input class="form-control" type="date" name="from_date" value="{{ $from_date }}">
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label>{{ trans('main.To Date') }}</label>
                                            <input class="form-control" type="date" name="to_date" value="{{ $to_date }}">
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <button class="btn btn-primary btn-block" type="submit">{{ trans('main.Search') }}</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- /Search Filter -->

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <ul id="edit_error_list"></ul>
                                    <ul id="delete_error_list"></ul>
                                    <div class="table-responsive">
                                        <table id="example1" class="table table-stripped">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">#</th>
                                                    <th class="text-center">{{ trans('main.Name') }}</th>
                                                    <th class="text-center">{{ trans('main.Phone') }}</th>
                                                    <th class="text-center">{{ trans('main.Email') }}</th>	
                                                    <th class="text-center">{{ trans('main.Message') }}</th>
                                                    <th class="text-center">{{ trans('main.Actions') }}</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @if($data->count() > 0)
                                                    <?php $i = 0; ?>
                                                    @foreach ($data as $item)
                                                        <?php $i++; ?>
                                                        <tr>
                                                            <td class="text-center notPrint">
                                                                <input id="delete_selected_input" type="checkbox" value="{{ $item->id }}" class="box1 mr-1" oninput="showBtnDeleteSelected()">
                                                                {{ $i }}
                                                            </td>
                                                            <td class="text-center">{{ $item->name }}</td>
                                                            <td class="text-center">{{ $item->phone }}</td>
                                                            <td class="text-center">{{ $item->email }}</td>
                                                            <td class="text-center">{{ $item->message }}</td>
                                                            <td class="text-center">
                                                                <button type="button" class="editBtn btn btn-sm btn-secondary mr-1" value="{{ $item->id }}"><i class="far fa-edit"></i></button>
                                                                <button type="button" class="deleteBtn btn btn-sm btn-danger" value="{{ $item->id }}"><i class="far fa-trash-alt"></i></button>
                                                            </td>
                                                        </tr>
                                                        @include('dashboard.message.deleteModal')
                                                        @include('dashboard.message.deleteSelectedModal')
                                                    @endforeach
                                                @else
                                                    <tr>
                                                        <th class="text-center" colspan="10">
                                                            <div class="col mb-3 d-flex">
                                                                <div class="card flex-fill">
                                                                    <div class="card-body p-3 text-center">
                                                                        <p class="card-text f-12">{{ trans('main.No Data Founded') }}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </th>
                                                    </tr>
                                                @endif
                                            </tbody>
                                        </table>
                                        {{ $data->links() }}
                                    </div>
                                </div>
                            </div>
                        </div>	
                    </div>	
                </div>
            </div>
            <!-- /Page Wrapper -->
        </div>
    </div>
    <!-- /Main Wrapper -->
	
@endsection



@section('js')
    <script>
        $(document).ready(function () {

            //delete
            $(document).on('click', '.deleteBtn', function (e) {
                e.preventDefault();
                var id = $(this).val();
                console.log('Delete button clicked, id:', id); // Debugging log
                $('#delete_id').val(id);
                $('#delete_error_list').html("");
                $('#deleteModal').modal('show');
            });

            //confirm delete button click event
            $(document).on('click', '.destroyBtn', function (e) {
                e.preventDefault();
                $(this).text('جارى الحذف');
                var id = $('#delete_id').val();
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                
                $.ajax({
                    type: "delete",
                    url: "/admin/message/destroy/" + id,
                    success: function (response) {
                        if (response.status == false) {
                            $('#delete_error_list').html("");
                            $('#delete_error_list').addClass('alert alert-danger');
                            $("#delete_error_list").append("<li>" + response.messages + "</li>");
                        } else {
                            $('#delete_error_list').html("");
                            $('#deleteModal').modal('hide');
                            $(this).text('تم الحذف');
                            location.reload();
                        }
                    },
                    error: function (reject) {},
                });
            });
        });
    </script>
@endsection

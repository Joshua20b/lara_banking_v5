@extends('dashboard.user.layouts.master')
@section('content')
    <style>
        .card-custom {
            border-radius: 10px;
            padding: 20px;
            color: white;
            width: 100%;
            position: relative;
            margin-bottom: 20px;
            text-align: center;
        }

        .card-custom h5 {
            margin: 0;
            font-size: 15px;
        }

        .card-custom p {
            margin: 10px 0 0;
            font-size: 20px;
            font-weight: bold;
        }

        .bg-balance {
            background-color: #0e3a61;
        }

        .bg-holder {
            background-color: #131418;
        }

        .bg-type {
            background-color: #2a8c7f;
        }

        .bg-number {
            background-color: #2a8c7f;
        }

        .bg-state {
            background-color: #131418;
        }

        .bg-profile {
            background-color: #0e3a61;
        }

        .card-custom::before {
            content: '';
            position: absolute;
            top: -10px;
            right: -10px;
            width: 100px;
            height: 100px;
            background: transparent;
            border-radius: 50%;
            border-top: 20px solid rgba(255, 255, 255, 0.2);
            border-right: 20px solid rgba(255, 255, 255, 0.2);
        }

        .bg-holder::before {
            border-top: 20px solid rgba(255, 255, 255, 0.2);
            border-left: 20px solid rgba(255, 255, 255, 0.2);
        }

        .bg-type::before {
            border-top: 20px solid rgba(255, 255, 255, 0.2);
            border-bottom: 20px solid rgba(255, 255, 255, 0.2);
        }
    </style>
    <div class="content-wrapper">
        <div class="container-full">
            <!-- Content Header (Page header) -->
            <div class="content-header d-none d-md-block d-lg-block">
                <div class="d-flex align-items-center">
                    <div class="me-auto">
                        <h4 class="page-title">My account</h4>
                        <div class="d-inline-block align-items-center">
                            <nav>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"
                                                aria-hidden="true"></i></a>
                                    </li>
                                    <li class="breadcrumb-item" aria-current="page">{{ $title }}</li>
                                </ol>
                            </nav>
                        </div>
                    </div>

                </div>
            </div> <!-- Main content -->
            <section class="content">
                <!-- Basic Card Example -->
                <h2>{{ $title }}</h2>
                <div class="row">
                    <div class="col-sm-12 col-md-12">

                        <div class="row my-4">
                            <!-- contains balance and history -->
                            <!-- balance card -->
                            <div class="col-12 col-md-7 p-3 ">
                                <div class="row dashboard">
                                    <div class="col-12 col-md-4 mb-4">
                                        <div class="card card-custom bg-balance">
                                            <div class="card-body">
                                                <h5 class="card-title">Account Balance</h5>
                                                <p class="card-text">
                                                    {{ currency($user->currency) }}{{ formatAmount($user->balance) }}
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 mb-4">
                                        <div class="card card-custom bg-holder">
                                            <div class="card-body">
                                                <h5 class="card-title">Income Balance</h5>
                                                <p class="card-text text-capitalize">
                                                    {{ currency($user->currency) }}{{ formatAmount($user->income_balance) }}
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 mb-4">
                                        <div class="card card-custom bg-type">
                                            <div class="card-body">
                                                <h5 class="card-title">Loan Balance</h5>
                                                <p class="card-text text-capitalize">
                                                    {{ currency($user->currency) }}{{ formatAmount($user->loan_balance) }}
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 mb-4">
                                        <div class="card card-custom bg-number">
                                            <div class="card-body">
                                                <h5 class="card-title">Account Number</h5>
                                                <p class="card-text">{{ $user->account_number }}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 mb-4">
                                        <div class="card card-custom bg-state">
                                            <div class="card-body">
                                                <h5 class="card-title">Account State</h5>
                                                <p class="card-text">
                                                    @foreach ($accountStates as $accountState)
                                                        @if ($user->account_state == $accountState->value)
                                                            {{ $accountState->name }}
                                                        @endif
                                                    @endforeach
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 mb-4">
                                        <div class="card card-custom bg-profile">
                                            <div class="card-body">
                                                <h5 class="card-title">Account Type</h5>
                                                <p class="card-text text-capitalize">
                                                    {{ $user->account_type }} Account
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="col-12 col-md-5  p-3">
                                <!-- transaction history -->
                                <div class="rounded-5 mt-4 ">

                                    <div class="d-block d-md-flex justify-content-between">
                                        <div class="mb-2">
                                            <div>
                                                <i class="text-success fa fa-warehouse fa-2x"></i>
                                                <span class="text-center fs-4 cap text-success fw-bold">
                                                    latest transactions </span>
                                            </div>
                                            <div>
                                                <small> below is the recent transaction occurred on your
                                                    account
                                                </small>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card-body scroll-card-body">
                                        <div class="list-group">
                                            @forelse ($transactions as $transaction)
                                                <a href="{{ route('user.transaction.show', $transaction->uuid) }}"
                                                    class="list-group-item list-group-item-action list-group-item-default">
                                                    <span
                                                        class="badge {{ $transaction->type == 'CREDIT' ? 'badge-success' : 'badge-danger' }} float-right">{{ $transaction->type }}</span>
                                                    <h5 class="m-0 p-0"><span
                                                            class="{{ $transaction->type == 'CREDIT' ? 'text-success' : 'text-danger' }}">{{ currency($user->currency) . formatAmount($transaction->amount) }}</span>
                                                        <small>{{ currency($user->currency, 'name') }}</small>
                                                    </h5>
                                                    <p class="m-0 p-0">{{ $transaction->description }}</p>
                                                    <p class="text-primary">Balance:
                                                        {{ currency($user->currency) . formatAmount($transaction->current_balance) }}
                                                    </p>
                                                    <small class="float-right">
                                                        Date:
                                                        {{ date('dS M, Y', strtotime($transaction->date)) }}
                                                    </small>
                                                </a>
                                            @empty
                                                <div class="card-body scroll-card-body">
                                                    <div class="alert alert-warning" role="alert">
                                                        <strong>No transactions yet</strong>
                                                    </div>
                                                </div>
                                            @endforelse

                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-sm-12 col-md-6 col-lg-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="fs-3 fw-bold text-center">Transactions</div>
                                        <div class="d-flex justify-content-between mt-4">
                                            <a class="text-center" href="{{ route('user.transaction.index') }}">
                                                <div><i class="fa fa-money-bill fa-4x"></i></div>
                                                <div> History</div>
                                            </a>
                                            <a href="{{ route('user.transfer.fund') }}" class="text-center">
                                                <div><i class="fa fa-exchange-alt fa-4x"></i></div>
                                                <div> Send Money</div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6 col-lg-5">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="fs-2 text-center fw-bold">Transfers</div>
                                        <div class="d-flex justify-content-between mt-5">
                                            <a class="text-center" href="{{ route('user.transfer.index') }}">
                                                <div><i class="fa fa-history fa-3x"></i></div>
                                                <div class="mt-3">Transfer History</div>
                                            </a>
                                            <div class="text-center">
                                                <div class="fw-bold"><i class="fa fa-circle-notch fa-3x"></i></div>
                                                <div>{{ $transfers }} Total Transfers</div>
                                                <div class="mt-3 text-primary">Last updated: {{ date('M dS Y') }}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="">
                                            <div class="fw-bold text-center fs-1">Deposit Method</div>
                                            <!-- <div class="">dd</div> -->
                                        </div>
                                        <div class="d-flex justify-content-between mt-5">
                                            <a href="{{ route('user.deposit.card') }}">
                                                <div><i class="fa fa-credit-card fa-5x"></i></div>
                                                <div class="text-center">Card</div>
                                            </a>
                                            <a href="{{ route('user.deposit.bitcoin') }}">
                                                <div><i class="fa fa-coins fa-5x"></i></div>
                                                <div class="text-center">Bitcoin</div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="text-center fw-bold fs-1">Applications</div>
                                        <div class="d-flex justify-content-between">
                                            <a href="{{ route('loan') }}" class="p-5 text-center">
                                                <div><i class="fa fa-money-check fa-5x"></i></div>
                                                <div class="text-center">Request Loan</div>
                                            </a>
                                            <a href="{{ route('user.card.index') }}" class="p-5 text-center">
                                                <div><i class="fa fa-credit-card  fa-5x"></i></div>
                                                <div class="text-center">Request Card</div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="text-center fw-bold fs-1">Profile </div>
                                        <div class="d-flex justify-content-between mt-5">
                                            <a href="{{ route('user.notification.index') }}" class="text-center">
                                                <div>
                                                    <div><i class="fa fa-coins fa-5x"></i></div>
                                                    <div class="text-center">Notifications</div>
                                                </div>
                                            </a>
                                            <a href="{{ route('user.profile.index') }}">
                                                <div><i class="fa fa-cog fa-5x"></i></div>
                                                <div class="text-center">Settings</div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- /.content -->
        </div>
    </div>
@endsection

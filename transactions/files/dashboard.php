    <div class="row mt-3">
                <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="widget-bg-color-icon card-box">
                            <div class="bg-icon bg-icon-success pull-left">
                                <i class="md md-list text-success"></i>
                            </div>
                            <div class="text-right">
                                <h3 class="text-dark"><b class="counter"><?php echo $transactionDetails['total']?></b></h3>
                                <p class="text-muted mb-0">Total Transactions</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>


                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="widget-bg-color-icon card-box fadeInDown animated">
                            <div class="bg-icon bg-icon-info pull-left">
                                <i class="md  md-attach-money  text-info"></i>
                            </div>
                            <div class="text-right">
                                <h3 class="text-dark">$<b class="counter"><?php echo $transactionDetails['completed']?></b></h3>
                                <p class="text-muted mb-0">Successful Amount</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>


                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="widget-bg-color-icon card-box">
                            <div class="bg-icon bg-icon-danger pull-left">
                                <i class="md md-block text-danger"></i>
                            </div>
                            <div class="text-right">
                                <h3 class="text-dark">$<b class="counter"><?php echo $transactionDetails['retracted']?></b></h3>
                                <p class="text-muted mb-0">Retracted Amount</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>

              <!--       <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="widget-bg-color-icon card-box">
                            <div class="bg-icon bg-icon-success pull-left">
                                <i class="md md-attach-money text-success"></i>
                            </div>
                            <div class="text-right">
                                <h3 class="text-dark"><b class="counter"><?php echo $transactionDetails['total']?></b></h3>
                                <p class="text-muted mb-0">Total Transactions</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div> -->
                </div>
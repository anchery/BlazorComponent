﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BlazorComponent.Data
{
    public class ObservationGroupModel
    {
        public int GrpId { get; set; }
        public string GrpText { get; set; }
    }
    public class ObservationModel
    {
        public int ObsId { get; set; }
        public string ObsText { get; set; }
    }
    public class ObservationViewModel
    {
        public int GrpId { get; set; }
        public string GrpText { get; set; }
        public List<ObservationModel> observations { get; set; }
    }
}
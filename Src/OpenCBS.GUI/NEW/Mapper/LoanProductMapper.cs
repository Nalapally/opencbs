﻿// Copyright © 2013 Open Octopus Ltd.
// 
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License along
// with this program; if not, write to the Free Software Foundation, Inc.,
// 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
// 
// Website: http://www.opencbs.com
// Contact: contact@opencbs.com

using System;
using OpenCBS.GUI.NEW.Model;
using OpenCBS.GUI.NEW.Dto;

namespace OpenCBS.GUI.NEW.Mapper
{
    public class LoanProductMapper : ILoanProductMapper
    {
        public LoanProduct Map(LoanProductDto dto)
        {
            return new LoanProduct
            {
                Id = dto.Id,
                Name = dto.Name,
                Code = dto.Code,
                AvailableFor = dto.AvailableFor,
                PaymentFrequencyPolicy = dto.PaymentFrequencyPolicy,
                SchedulePolicy = dto.SchedulePolicy,
                YearPolicy = dto.YearPolicy,
                DateShiftPolicy = dto.DateShiftPolicy,
                RoundingPolicy = dto.RoundingPolicy,
                AmountMin = dto.AmountMin.HasValue ? dto.AmountMin.Value : 0,
                AmountMax = dto.AmountMax.HasValue ? dto.AmountMax.Value : 0,
                InterestRateMin = dto.InterestRateMin.HasValue ? dto.InterestRateMin.Value : 0,
                InterestRateMax = dto.InterestRateMax.HasValue ? dto.InterestRateMax.Value : 0,
                MaturityMin = dto.MaturityMin.HasValue ? dto.MaturityMin.Value : 0,
                MaturityMax = dto.MaturityMax.HasValue ? dto.MaturityMax.Value : 0,
                Deleted = dto.Deleted
            };
        }

        public LoanProductDto Map(LoanProduct loanProduct)
        {
            if (loanProduct == null)
                throw new ArgumentNullException("loanProduct");

            return new LoanProductDto
            {
                Id = loanProduct.Id,
                Name = loanProduct.Name,
                Code = loanProduct.Code,
                AvailableFor = loanProduct.AvailableFor,
                PaymentFrequencyPolicy = loanProduct.PaymentFrequencyPolicy,
                SchedulePolicy = loanProduct.SchedulePolicy,
                YearPolicy = loanProduct.YearPolicy,
                DateShiftPolicy = loanProduct.DateShiftPolicy,
                RoundingPolicy = loanProduct.RoundingPolicy,
                AmountMin = loanProduct.AmountMin,
                AmountMax = loanProduct.AmountMax,
                InterestRateMin = loanProduct.InterestRateMin,
                InterestRateMax = loanProduct.InterestRateMax,
                MaturityMin = loanProduct.MaturityMin,
                MaturityMax = loanProduct.MaturityMax,
                Deleted = loanProduct.Deleted
            };
        }
    }
}

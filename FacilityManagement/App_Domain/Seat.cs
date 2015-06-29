using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FacilityManagement.App_Domain
{
    public class Seat
    {
        public string SeatNumber{set;get;}
        public int LaboratoryId{set;get;}
        public int ReservationId{set;get;}

        public Seat() { }
        public Seat(string _seatNumber,int _laboraatoryId,int _reservationId) {

            this.SeatNumber = _seatNumber;
            this.LaboratoryId = _laboraatoryId;
            this.ReservationId = _reservationId;
        
        }
    }
}